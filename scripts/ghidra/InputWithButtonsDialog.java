
import java.util.List;
import java.util.Optional;
import java.awt.BorderLayout;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;

import docking.DialogComponentProvider;
import docking.widgets.label.GHtmlLabel;

public class InputWithButtonsDialog extends DialogComponentProvider {
    Optional<Integer> value = Optional.empty();

    InputWithButtonsDialog(String title, String content, List<String> buttons) {
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
    public Optional<Integer> getValue() {
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
