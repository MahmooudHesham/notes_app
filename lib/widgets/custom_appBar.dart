import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Notes", style: TextStyle(fontFamily: 'ReadexPro', fontSize: 36)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
