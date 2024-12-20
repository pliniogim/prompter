import "terminal.dart";
import 'option.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  ask(String prompt, List<Option> options) {
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);

    final input = _terminal.collectInput();
    try {
      return options[int.parse(input)].value;
    } catch (err) {
      _terminal.clearScreen();
      return ask(prompt, options);
    }
  }
}
