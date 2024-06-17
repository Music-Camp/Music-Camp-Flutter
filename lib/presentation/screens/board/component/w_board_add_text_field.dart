import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BoardTitleTextField extends StatefulWidget {
  const BoardTitleTextField({super.key});

  @override
  State<BoardTitleTextField> createState() => _BoardTitleTextFieldState();
}

class _BoardTitleTextFieldState extends State<BoardTitleTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        autofocus: true,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.clear),
          labelText: '제목',
          hintText: '제목을 입력해주세요',
          filled: true,
          fillColor: Colors.transparent,
        ),
      ).pLTRB(0, 0, 0, 10),
      TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.clear),
          labelText: '내용',
          hintText: '내용을 입력해주세요',
          filled: true,
          fillColor: Colors.transparent,
        ),
      ),
    ]);
  }
}
