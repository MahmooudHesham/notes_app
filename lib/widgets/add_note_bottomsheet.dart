import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/cutsom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 48),
            CutsomTextfield(hint: 'Title'),
            SizedBox(height: 30),
            CutsomTextfield(hint: 'Content', maxLines: 5),
            SizedBox(height: 60),
            CustomButton(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
