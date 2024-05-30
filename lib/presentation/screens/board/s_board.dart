import 'package:flutter/material.dart';
import 'package:music_camp/presentation/screens/board/s_board_add.dart';

import 'component/w_board_list_view.dart';
import 'component/w_board_app_bar.dart';


class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardAppBar(),
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

