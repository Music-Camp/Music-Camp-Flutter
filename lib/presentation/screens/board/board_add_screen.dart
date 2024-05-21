import 'package:flutter/material.dart';
import 'package:music_camp/widget/board_add_list_view.dart';
import 'package:music_camp/widget/board_add_top_app_bar.dart';

class BoardAddScreen extends StatefulWidget {
  const BoardAddScreen({super.key});

  @override
  State<BoardAddScreen> createState() => _BoardAddScreenState();
}

class _BoardAddScreenState extends State<BoardAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardAddTopAppBar(),
      body: Container(
        padding: EdgeInsets.fromLTRB(10,10,10,0),
        child : BoardAddListView(),
      ),
    );
  }
}
