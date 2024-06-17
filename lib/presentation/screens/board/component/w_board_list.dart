import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_camp/domain/model/board.dart';
import 'package:music_camp/presentation/screens/board/component/w_board_item.dart';
import 'package:velocity_x/velocity_x.dart';

class BoardList extends StatelessWidget {
  BoardList({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<BoardBloc, BoardBlocState>(builder: (context, state) {
    //   return state.boardList.isEmpty
    //       ? '제목을 입력해주세요'.text.size(30).makeCentered()
    //       : Column(
    //           children: state.boardList.map((e) => BoardItem(e)).toList(),
    //         );
    // });
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return BoardItem(Board(postId: "1", userId: "1", nickName: '안영준', title: '제목입니다', content: '내용입니다', imageUrl: '', likeNum: "3", createdAt: DateTime(2024,1,1).toString(), updatedAt: DateTime(2024,1,1).toString()));
      },
      itemCount: 10,

    );
  }
}
