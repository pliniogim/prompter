import "package:prompter_plg/prompter_plg.dart";

void main() {
  // options type - Class Option (assertion - value)
  var options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f'),
  ];

  // prompter class
  final prompter = new Prompter();
  
  // multiple choice example
  String colorCode = prompter.askMultiple("What color do you like?", options);
  
  // binary choice example
  bool answer = prompter.askBinary('Do you like DART? ');
  
  print(colorCode);
  print(answer);
}
