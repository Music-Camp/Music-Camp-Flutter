import 'package:flutter/material.dart';
import 'package:music_camp/model/board.dart';
import 'package:music_camp/screen/board_add_screen.dart';
import 'package:music_camp/widget/board_list_view.dart';

import '../widget/board_top_app_bar.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardTopAppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => BoardAddScreen(),
                fullscreenDialog: true
              )
          );
        },
      ),

      body: Container(
        child: Column(
          children: [
            Expanded(child: BoardListView()),
          ],
        ),

      )
    );
  }
}

