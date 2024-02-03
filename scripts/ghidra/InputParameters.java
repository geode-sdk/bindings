
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;

public abstract class InputParameters {
    ScriptWrapper wrapper;
    Class<?> mapClass = null;
    Object valuesMapObject = null;
    HashMap<String, Consumer<Object>> resultTargetMap = null;

    protected void choice(String title, List<String> options, Consumer<String> setter) throws Exception {
        if (this.valuesMapObject != null) {
            var defineChoice = mapClass.getMethod("defineChoice", String.class, String.class, String[].class);
            defineChoice.invoke(this.valuesMapObject, title, null, options.toArray(String[]::new));
            resultTargetMap.put(title, s -> setter.accept((String)s));
        }
        else {
            setter.accept(wrapper.wrapped.askChoice("Input values to " + this.title(), title, options, null));
        }
    }

    protected void choice(String title, List<String> options, String defaultValue, Consumer<String> setter) throws Exception {
        if (this.valuesMapObject != null) {
            var defineChoice = mapClass.getMethod("defineChoice", String.class, String.class, String[].class);
            defineChoice.invoke(this.valuesMapObject, title, defaultValue, options.toArray(String[]::new));
            resultTargetMap.put(title, s -> setter.accept((String)s));
        }
        else {
            setter.accept(wrapper.wrapped.askChoice("Input values to " + this.title(), title, options, defaultValue));
        }
    }

    protected void bool(String title, Consumer<Boolean> setter) throws Exception {
        if (this.valuesMapObject != null) {
            var defineBoolean = mapClass.getMethod("defineBoolean", String.class, boolean.class);
            defineBoolean.invoke(this.valuesMapObject, title, true);
            resultTargetMap.put(title, s -> setter.accept((Boolean)s));
        }
        else {
            setter.accept(wrapper.wrapped.askYesNo("Input values to " + this.title(), "Should the script " + title + "?"));
        }
    }

    protected void bool(String title, boolean defaultValue, Consumer<Boolean> setter) throws Exception {
        if (this.valuesMapObject != null) {
            var defineBoolean = mapClass.getMethod("defineBoolean", String.class, boolean.class);
            defineBoolean.invoke(this.valuesMapObject, title, defaultValue);
            resultTargetMap.put(title, s -> setter.accept((Boolean)s));
        }
        else {
            setter.accept(wrapper.wrapped.askYesNo("Input values to " + this.title(), "Should the script " + title + "?"));
        }
    }

    private void showIntroOrAskAll() throws Exception {
        var msg = this.description();
        if (this.valuesMapObject != null) {
            var askValues = wrapper.wrapped.getClass().getMethod("askValues", String.class, String.class, mapClass);
            try {
                askValues.invoke(wrapper.wrapped, this.title(), msg, this.valuesMapObject);
            }
            catch(InvocationTargetException error) {
                throw (Exception)error.getCause();
            }
            for (var key : resultTargetMap.keySet()) {
                var getAbstractValue = mapClass.getMethod("getAbstractValue", String.class);
                var abstractValue = getAbstractValue.invoke(this.valuesMapObject, key);
                var getValue = abstractValue.getClass().getMethod("getValue");
                resultTargetMap.get(key).accept(getValue.invoke(abstractValue));
            }
        }
        else {
            wrapper.askContinue(
                this.title(),
                msg + 
                "\n\nNote: It is recommended to run this script " + 
                "under Ghidra 11 so you get all of these inputs in one dialog :-)"
            );
        }
    }

    protected abstract String title();
    protected abstract String description();
    protected abstract void doAsk(Object... args) throws Exception;

    protected void waitForAnswers() throws Exception {
        if (mapClass != null) {
            this.showIntroOrAskAll();
        }
    }

    /**
     * Ask the user for input parameters
     * @param script Current GhidraScript instance
     * @param bindingsDir Bindings directory
     * @returns InputParameters struct with the responses
     */
    protected void run(ScriptWrapper wrapper, Object... args) throws Exception {
        this.wrapper = wrapper;
        try {
            mapClass = Class.forName("ghidra.features.base.values.GhidraValuesMap");
            valuesMapObject = mapClass.getConstructor().newInstance();
            resultTargetMap = new HashMap<String, Consumer<Object>>();
        }
        catch(Exception ignore) {}
        if (mapClass == null) {
            this.showIntroOrAskAll();
        }
        this.doAsk(args);
    }
}
