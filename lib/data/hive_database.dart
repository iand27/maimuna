import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/note.dart';

class HiveDatabase {
  // inisialisasi hive box
  final _myBox = Hive.box('note_database');

  // load catatan
  List<Note> loadNotes() {
    List<Note> savedNotesFromatted = [];

    // jika ada isi, return isi itu jika tidak return empty
    if (_myBox.get("ALL_NOTES") != null) {
      List<dynamic> savedNotes = _myBox.get("ALL_NOTES");
      for (int i = 0; i < savedNotes.length; i++) {
        // buat catatan individu
        Note individualNote =
            Note(id: savedNotes[i][0], text: savedNotes[i][1]);
        // add ke list
        savedNotesFromatted.add(individualNote);
      }
    } else {
      savedNotesFromatted.add(Note(id: 0, text: 'Catatan Pertama'));
    }

    return savedNotesFromatted;
  }

  // simpan catatan
  void savedNotes(List<Note> allNotes) {
    List<List<dynamic>> allNotesFormatted = [
      /*

      [

        [ 0 , "Catatan Pertama"],
        [ 1 , "Catatan Kedua"],
        ..

      ]

      */
    ];

    //  setiap catatan memiliki id dan text
    for (var note in allNotes) {
      int id = note.id;
      String text = note.text;
      allNotesFormatted.add([id, text]);
    }

    // lalu simpan ke hive box
    _myBox.put("ALL_NOTES", allNotesFormatted);
  }
}
