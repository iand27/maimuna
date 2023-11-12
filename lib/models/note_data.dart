import 'package:flutter/material.dart';

import '../data/hive_database.dart';
import 'note.dart';

class NoteData extends ChangeNotifier {
  //  hive database
  final db = HiveDatabase();

  // semua catatan
  List<Note> allNotes = [];

  // inisialisasi list
  void initializeNotes() {
    allNotes = db.loadNotes();
  }

  // get catatan
  List<Note> getAllNotes() {
    return allNotes;
  }

  // add catatan baru
  void addNewNote(Note note) {
    allNotes.add(note);
    notifyListeners();
  }

  // update catatan
  void updateNote(Note note, String text) {
    for (int i = 0; i < allNotes.length; i++) {
      if (allNotes[i].id == note.id) {
        allNotes[i].text = text;
      }
    }
    notifyListeners();
  }

  // hapus catatan
  void deleteNote(Note note) {
    allNotes.remove(note);
    notifyListeners();
  }
}
