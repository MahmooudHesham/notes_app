import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/cutsom_text_form_field.dart';
import 'package:notes_app/widgets/edit_note_colors_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CutsomTextFormfield(
            onChanged: (value) {
              title = value;
            },
            intialValue: widget.note.title,

            hint: 'Title',
          ),
          const SizedBox(height: 20),
          CutsomTextFormfield(
            onChanged: (value) {
              content = value;
            },
            intialValue: widget.note.content,

            hint: 'Contnet',
            maxLines: 5,
          ),
          const SizedBox(height: 20),
          EditNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}
