import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CutsomTextFormfield extends StatelessWidget {
  const CutsomTextFormfield({
    this.onSaved,
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onChanged,
    this.intialValue,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final String? intialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: intialValue,
      onChanged: onChanged,
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
      style: const TextStyle(color: Colors.white),
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
