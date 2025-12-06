import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CutsomTextfield extends StatelessWidget {
  const CutsomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColour,
      decoration: InputDecoration(
        hintText: "Title",
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
