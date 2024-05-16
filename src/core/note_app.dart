import 'dart:io';
import '../models/note_model.dart';
 class NoteApp {
  List<NoteModel> notes = [];

  void Menu() {
    print("----------MENU----------");
    print("1-Creat a note");
    print("2-Edit a note");
    print("3-Delete a note");
    print("4-Search for note");
    print("5-Exit");
    print("------------------------");
  }

  void creat_note() {
    print("Enter the title:");
    String? title = stdin.readLineSync();
    print("Enter the note context:");
    String? context = stdin.readLineSync();
    notes.add(NoteModel(title: title, context: context));
    print("note added.");
    print('Title: ${notes[notes.length - 1].title}');
  }

  void edit_note() {
    if (notes.isEmpty) {
      print("there is nothing to edit.");
      return;
    }
    print("enter the index of the note you want to edit:");
    int? index = int.tryParse(stdin.readLineSync() ?? '');
    if (index == null || notes.length <= index || index < 0) {
      print("this index is invalid.");
      return;
    }
    print("Enter the new title: ");
    String? new_title = stdin.readLineSync();
    notes[index].title = new_title;
    print("Enter the new note context: ");
    String? new_context = stdin.readLineSync();
    notes[index].context = new_context;
    print("your note is edited.");
  }

  void delete_note() {
    if (notes.isEmpty) {
      print("there is nothing to delete.");
      return;
    }
    print("enter the index of the note you want to delete:");
    int? index = int.tryParse(stdin.readLineSync() ?? '');
    if (index == null || notes.length <= index || index < 0) {
      print("this index is invalid.");
      return;
    }
    notes.remove(index);
    print("your note is deleted.");
  }

  void search_note() {
    if (notes.isEmpty) {
      print("there is nothing to edit.");
      return;
    }
    print("Enter the title for the note that you want to search for: ");
    String? title = stdin.readLineSync();
    for (int i = 0; i < notes.length; i++) {
      if (notes[i].title == title) {
        print("your note is found.");
        print('Title: ${notes[i].title}');
        print('note context: ${notes[i].context}');
        return;
      }
    }
    print("your note isnt found.");
  }
}
