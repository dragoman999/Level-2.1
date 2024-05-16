import 'dart:io';
import 'core/note_app.dart';

void main() {
  print("----------MENU----------");
    print("1-Creat a note");
    print("2-Edit a note");
    print("3-Delete a note");
    print("4-Search for note");
    print("5-Exit");
    print("------------------------");
     while (true) {
      stdout.write('Enter your choice: '); 
      String? input = stdin.readLineSync();
      if (input != null && input.isNotEmpty) {
        int? choice = int.tryParse(input);
        if (choice != null) {
          switch (choice) {
            case 1:
              creat_note();
              break;
            case 2:
              edit_note();
              break;
            case 3:
              delete_note();
              break;
            case 4:
              search_note();
              break;
            case 5:
              exit(0);
              break;
            default:
              print('Invalid choice.');
          }
        } else {
          print('Please enter a valid number.');
        }
      } else {
        print('Please enter a choice.');
      }
    }
  }



