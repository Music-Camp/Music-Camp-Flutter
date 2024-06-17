import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  final String title;
  final bool readOnly;

  const TitleTextField({super.key, required this.title, required this.readOnly});

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: "$title",
        filled: true,
        fillColor: Colors.transparent,
      ),
    );
  }
}
