import "terminal.dart";
import 'option.dart';

final Terminal _terminal = const Terminal();

class Prompter {


  bool askBinary(String prompt){

    String input = _ask('$prompt (Y/n)', []);
    if (input.length > 1){
      askBinary(prompt);
    }
    return input.toLowerCase().contains('y');

  }

  askMultiple(String prompt, List<Option> options) {
    String input = _ask(prompt, options);
    try {
      return options[int.parse(input)].value;
    } catch (err) {
      _terminal.clearScreen();
      return askMultiple(prompt, options);
    }
  }

  String _ask(String prompt, List<Option> options){
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    return _terminal.collectInput();
  }
}
