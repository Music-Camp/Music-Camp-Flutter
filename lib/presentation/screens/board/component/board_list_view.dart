import 'package:flutter/material.dart';
import 'package:music_camp/domain/model/board.dart';
import 'package:music_camp/presentation/screens/board/component/w_board_app_bar.dart';
import 'package:music_camp/presentation/screens/board/component/w_board_item.dart';
import 'package:velocity_x/velocity_x.dart';

class BoardListView extends StatefulWidget {
  final List<Board> boards;

  const BoardListView({super.key, required this.boards});

  @override
  State<BoardListView> createState() => _BoardListViewState();
}

class _BoardListViewState extends State<BoardListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: BoardAppBar.appBarHeight,
            onRefresh: () async {
              // 수행할 동작.. 리스트를 다시 불러온다던지..
            },
            child: Expanded(
              child: ListView.builder(
                itemCount: widget.boards.length,
                itemBuilder: (BuildContext context, int index){
                  final boardData = widget.boards[index];
                  return BoardItem(board:boardData);
                },

              ).pSymmetric(h: 15),
            ),
          )
        ],
      ),
    );
  }
}


