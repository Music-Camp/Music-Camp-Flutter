import 'package:flutter/material.dart';

class ContentTextField extends StatelessWidget {
  final String content;
  final bool readOnly;
  const ContentTextField({super.key, required this.content, required this.readOnly});

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      decoration: InputDecoration(
        hintMaxLines: 10,
        hintText: "$content",
        filled: true,
        fillColor: Colors.transparent,
      ),
    );
  }
}
