
import java.util.List;
import java.util.Optional;
import java.awt.BorderLayout;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;

import docking.DialogComponentProvider;
import docking.widgets.label.GHtmlLabel;
import ghidra.util.Swing;
import ghidra.util.exception.CancelledException;

public class InputWithButtonsDialog extends DialogComponentProvider {
    Optional<Integer> value = Optional.empty();

    public static int show(ScriptWrapper wrapper, String title, String content, List<String> buttons) throws CancelledException  {
        var choice = Swing.runNow(() -> {
			var dialog = new InputWithButtonsDialog(title, content, buttons);
			wrapper.wrapped.getState().getTool().showDialog(dialog);
			return dialog.getValue();
		});
        if (choice.isEmpty()) {
            throw new CancelledException();
        }
        return choice.get();
    }

    private InputWithButtonsDialog(String title, String content, List<String> buttons) {
        super(title, true, false, true, false);
        this.setTransient(true);

        for (var i = 0; i < buttons.size(); i += 1) {
            final var tag = i;
            var btn = new JButton(buttons.get(i));
            btn.setName(buttons.get(i));
            btn.addActionListener(e -> {
                this.value = Optional.of(tag);
                this.close();
            });
            this.addButton(btn);
        }
        this.addCancelButton();

        this.setRememberSize(false);
        this.setRememberLocation(false);
        this.buildMainPanel(content, buttons);
    }
    private Optional<Integer> getValue() {
        return this.value;
    }
    private void buildMainPanel(String labelText, List<String> optionValues) {
        JPanel workPanel = new JPanel(new BorderLayout());
        workPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        JLabel messageLabel = new GHtmlLabel(labelText);
        messageLabel.setBorder(BorderFactory.createEmptyBorder(0, 0, 5, 0));
        JPanel dataPanel = new JPanel(new BorderLayout());
        dataPanel.add(messageLabel, "North");
        workPanel.add(dataPanel, "Center");
        this.addWorkPanel(workPanel);
    }
}
