import 'package:flutter/material.dart';

class BoardInputTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;

  const BoardInputTextField({super.key, required this.controller, required this.labelText, required this.hintText});

  @override
  State<BoardInputTextField> createState() => _BoardInputTextFieldState();
}

class _BoardInputTextFieldState extends State<BoardInputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.clear),
        labelText: '${widget.labelText}',
        hintText: '${widget.hintText}',
        filled: true,
        fillColor: Colors.transparent,
      ),
    );
  }
}
