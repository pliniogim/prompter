import 'package:prompter_plg/src/prompter.dart';
import 'package:prompter_plg/src/option.dart';

void main() {
  var options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f'),
  ];

  final prompter = new Prompter();

  final usersPick = prompter.ask("What color do you like?", options);

  print(usersPick);
}
