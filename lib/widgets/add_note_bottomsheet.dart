import 'package:flutter/material.dart';
import 'package:notes_app/widgets/cutsom_textField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 48),
          CutsomTextfield(hint: 'Title'),
          const SizedBox(height: 20),
          CutsomTextfield(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
