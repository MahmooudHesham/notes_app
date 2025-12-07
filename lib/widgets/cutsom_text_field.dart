import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CutsomTextfield extends StatelessWidget {
  const CutsomTextfield({
    this.onSaved,
    super.key,
    required this.hint,
    this.maxLines = 1,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColour,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,

        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          color: kPrimaryColour,
          borderRadius: 18,
          width: 3,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({
    Color? color,
    double borderRadius = 12,
    double width = 1,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(color: color ?? Colors.white, width: width),
    );
  }
}
