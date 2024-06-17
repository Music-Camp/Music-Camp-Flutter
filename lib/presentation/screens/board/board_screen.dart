import 'package:flutter/material.dart';
import 'package:music_camp/presentation/screens/board/component/w_board_list.dart';
import 'package:music_camp/presentation/screens/board/board_add_screen.dart';
import 'package:velocity_x/velocity_x.dart';
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
      body: Container(
        child: Stack(
          children: [
            RefreshIndicator(
              edgeOffset: BoardAppBar.appBarHeight,
              onRefresh: () async {
                // 수행할 동작.. 리스트를 다시 불러온다던지..
              },
              child: Expanded(
                child: BoardList().pSymmetric(h: 15),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => BoardAddScreen(),
              fullscreenDialog: true));
        },
      ),
    );
  }
}
