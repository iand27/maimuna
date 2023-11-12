import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maimuna/models/note_data.dart';
import 'package:provider/provider.dart';

import '../models/note.dart';
import 'editing_note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<NoteData>(context, listen: false).initializeNotes();
  }

  // buat catatan baru
  void createNewNote() {
    // buat id baru
    int id = Provider.of<NoteData>(context, listen: false).getAllNotes().length;
    // buat catatan  kosong
    Note newNote = Note(
      id: id,
      text: '',
    );

    // go to edit catatan
    goToNotePage(newNote, true);
  }

  // go to halaman edit catatan
  void goToNotePage(Note note, bool isNewNote) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditingNotePage(
          note: note,
          isNewNote: isNewNote,
        ),
      ),
    );
  }

  // hapus catatan
  void deleteNote(Note note) {
    Provider.of<NoteData>(context, listen: false).deleteNote(note);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteData>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: createNewNote,
          elevation: 0,
          backgroundColor: Colors.grey[100],
          child: const Icon(
            Icons.add,
            color: Colors.grey,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Padding(
              padding: const EdgeInsets.only(top: 75.0, left: 25.0),
              child: Text(
                'Catatan',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // list catatan
            value.getAllNotes().length == 0
                ? Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Center(
                      child: Text(
                        'Buat Catatanmu Maimuna :)',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  )
                : CupertinoListSection.insetGrouped(
                    children: List.generate(
                      value.getAllNotes().length,
                      (index) => CupertinoListTile(
                        title: Text(value.getAllNotes()[index].text),
                        onTap: () =>
                            goToNotePage(value.getAllNotes()[index], false),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey[400],
                          ),
                          onPressed: () =>
                              deleteNote(value.getAllNotes()[index]),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
