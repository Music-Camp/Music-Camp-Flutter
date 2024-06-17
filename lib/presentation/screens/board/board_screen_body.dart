import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../domain/model/board.dart';
import 'component/w_board_app_bar.dart';
import 'component/board_list_view.dart';

class BoardScreenBody extends StatefulWidget {
  const BoardScreenBody({super.key});

  @override
  State<BoardScreenBody> createState() => _BoardBodyState();
}

class _BoardBodyState extends State<BoardScreenBody> {

  List<Board> testBoards = [
    Board(postId: "postId", userId: "userId", nickName: "nickName", title: "title", content: "content", imageUrl: "imageUrl", likeNum: "likeNum", createdAt: "createdAt", updatedAt: "updatedAt"),
    Board(postId: "postId", userId: "userId", nickName: "nickName", title: "title", content: "content", imageUrl: "imageUrl", likeNum: "likeNum", createdAt: "createdAt", updatedAt: "updatedAt"),
  ];
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
              child: BoardListView(boards: testBoards,).pSymmetric(h: 15),
            ),
          )
        ],
      ),
    );
  }
}
