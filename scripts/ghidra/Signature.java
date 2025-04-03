
import java.util.List;
import java.util.Optional;

import ghidra.program.model.listing.Variable;

public class Signature {
    public Optional<Variable> returnType;
    public List<Variable> parameters;
    public boolean memberFunction = false;
    public boolean returnsStruct = false;

    Signature(Variable ret, List<Variable> params) {
        returnType = Optional.ofNullable(ret);
        parameters = params;
    }
    public String toString() {
        return
            returnType.map(r -> r.getDataType().getDisplayName()).orElse("undefined") +
            "(" + String.join(", ", parameters.stream()
                .map(p -> p.getDataType().getDisplayName() + " " + p.getName())
                .toArray(String[]::new)
            ) + ")";
    }
}
