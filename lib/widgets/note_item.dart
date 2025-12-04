import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "I will became the best developer",
                style: TextStyle(
                  color: Colors.white.withAlpha(150),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.white, size: 30),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              'APR 4,2025',
              style: TextStyle(color: Colors.white.withAlpha(150)),
            ),
          ),
        ],
      ),
    );
  }
}
