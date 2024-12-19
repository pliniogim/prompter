import 'package:prompter_plg/src/terminal.dart';
import 'package:prompter_plg/src/option.dart';

void main() {
  var trm = Terminal();

  var options = [
    new Option('I want red', '#00f'),
    new Option('I want blue', '#00f'),
  ];


  trm.clearScreen();
  trm.printPrompt('Options test');
  trm.printOptions(options);
  String answer = trm.collectInput();
  trm.printPrompt(answer);
  // trm.clearScreen();
}
