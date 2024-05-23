import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/data/respository_impl/board_repository_impl.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_bloc.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_event.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_state.dart';

import '../../../../domain/model/board.dart';
import '../../../../domain/repository/board_repository.dart';
import '../board_detail_screen.dart';

class BoardListView extends StatefulWidget {
  const BoardListView({super.key});

  @override
  State<BoardListView> createState() => _BoardListViewState();
}

class _BoardListViewState extends State<BoardListView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BoardBloc(BoardRepositoryImpl())..add(FetchBoardListEvent()),
      child: BlocBuilder<BoardBloc, BoardState>(
        builder: (context, state){
          if(state is BoardLoading){
            return Center(child : CircularProgressIndicator());
          }else if(state is BoardLoaded){
            return ListView.builder(
              itemBuilder: (context, index) {
                return makeListItem(context,state.boardList[index]);
              },
              itemCount: state.boardList.length,
            );
          }else{
            return Center(child: Text("Failed to fetch data"));
          }
        }
      ),
    );
  }
}

Widget makeListItem(BuildContext context,Board board) {
  return ListTile(
    leading: Image.network(
      board.imageUrl,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return CircularProgressIndicator();
      }
    ),
    title: Text(board.title),
    subtitle: Text(board.title),
    trailing: Text(board.nickName.toString()),
    isThreeLine: true,
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => BoardDetailScreen(),)
      );
    },
  );
}