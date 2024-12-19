import 'dart:io';
import 'option.dart';

class Terminal {
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  void printOptions(List<Option> options) {
    
    // for (var i = 0; i < options.length; i++) {
    //   stdout.writeln('[$i] - ${options[i].label}');
    // }
    
    options.asMap().forEach((index, option){
      stdout.writeln('[$index] - ${option.label}');
    });

    stdout.writeln('Enter a choice: ');
    stdout.write('>');
  }

  String collectInput() {
    String? answer =
        stdin.readLineSync(encoding: SystemEncoding(), retainNewlines: false);
    if (answer!.isNotEmpty) {
      return answer;
    } else {
      return "Nothing typed";
    }
  }

  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }
}
