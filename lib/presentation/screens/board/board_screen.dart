import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/presentation/screens/board/board_screen_body.dart';
import 'package:music_camp/presentation/screens/board/component/board_list_view.dart';
import 'package:music_camp/presentation/screens/board/board_add_screen.dart';
import 'package:music_camp/presentation/widget/loading_view.dart';
import '../../../domain/model/board.dart';
import 'bloc/board_bloc.dart';
import 'bloc/board_event.dart';
import 'bloc/board_state.dart';
import 'component/w_board_app_bar.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  List<Board> boards = [
    Board(postId: "postId", userId: "userId", nickName: "nickName", title: "title", content: "content", imageUrl: "imageUrl", likeNum: "likeNum", createdAt: "createdAt", updatedAt: "updatedAt"),
    Board(postId: "postId", userId: "userId", nickName: "nickName", title: "title", content: "content", imageUrl: "imageUrl", likeNum: "likeNum", createdAt: "createdAt", updatedAt: "updatedAt"),
  ];

  @override
  void initState() {
    super.initState();
    context.read<BoardBloc>().add(BoardFetchEvent());
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoardBloc, BoardState>(
      builder: (context,state) {
        Widget body;

        if(state is BoardLoadingState){
          body = LoadingView();
        }else if(state is BoardLoadedState){
          body = BoardScreenBody();
        }else if(state is BoardAddedState){
          body = BoardScreenBody();
        }else if(state is BoardErrorState){
          body = Center(child: Text('Error: ${state.message}'));
        }else if(state is BoardInitialState){
          body = Center(child: Text('Initial State'));
        }else{
          body = Center(child: Text('Else State'));
        }

        return Scaffold(
          appBar: BoardAppBar(),

          body: body,

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
    );
  }
}
