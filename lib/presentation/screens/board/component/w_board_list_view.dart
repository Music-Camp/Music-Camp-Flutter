import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/data/respository_impl/board_repository_impl.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_bloc.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_event.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_state.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../domain/model/board.dart';
import '../../../../domain/repository/board_repository.dart';
import '../s_board_detail.dart';

class BoardListView extends StatefulWidget {
  const BoardListView({super.key});

  @override
  State<BoardListView> createState() => _BoardListViewState();
}

class _BoardListViewState extends State<BoardListView> {
  final testBoard = Board(
      postId: 1,
      userId: 1,
      nickName: '안영준이',
      title: "제목이에요!",
      content: "내용이에요~!",
      imageUrl: "",
      likeNum: 3,
      createdAt: DateTime(24, 5, 29),
      updatedAt: DateTime(24, 5, 29));

  @override
  Widget build(BuildContext context) {
    /// BLOC 적용
    // return BlocProvider(
    //   create: (context) =>
    //       BoardBloc(BoardRepositoryImpl())..add(FetchBoardListEvent()),
    //   child: BlocBuilder<BoardBloc, BoardState>(builder: (context, state) {
    //     if (state is BoardLoading) {
    //       return Center(child: CircularProgressIndicator());
    //     } else if (state is BoardLoaded) {
    //       return ListView.builder(
    //         itemBuilder: (context, index) {
    //           // TODO : 테스트 게시판 데이터 수정
    //           return makeListItem(context, state.boardList[index]);
    //
    //         },
    //         itemCount: state.boardList.length,
    //
    //       );
    //     } else {
    //       return Center(child: Text("Failed to fetch data"));
    //     }
    //   }),
    // );
    return ListView.builder(
      itemBuilder: (context, index) {
        // TODO : 테스트 게시판 데이터 수정
        // return makeListItem(context, state.boardList[index]);
        return makeTestListItem(context, testBoard);
      },
      //itemCount: state.boardList.length,
      itemCount: 20,
    );
  }
}

Widget makeListItem(BuildContext context, Board board) {
  return ListTile(
    leading: Image.network(board.imageUrl,
        loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) return child;
      return CircularProgressIndicator();
    }),
    title: Text(board.title),
    subtitle: Text(board.title),
    trailing: Text(board.nickName.toString()),
    isThreeLine: true,
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BoardDetailScreen(),
      ));
    },
  );
}

Widget makeTestListItem(BuildContext context, Board board) {
  return ListTile(
    title: Text(board.title),
    subtitle: Text(board.title),
    trailing: Text(board.nickName.toString()),
    isThreeLine: true,
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BoardDetailScreen(),
      ));
    },
  );
}
