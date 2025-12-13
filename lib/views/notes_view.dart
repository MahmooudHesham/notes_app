import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottomsheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        backgroundColor: Colors.white.withAlpha(50),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
