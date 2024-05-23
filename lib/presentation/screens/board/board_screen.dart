import 'package:flutter/material.dart';
import 'package:music_camp/presentation/screens/board/board_add_screen.dart';

import 'component/board_list_view.dart';
import 'component/board_top_app_bar.dart';


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

