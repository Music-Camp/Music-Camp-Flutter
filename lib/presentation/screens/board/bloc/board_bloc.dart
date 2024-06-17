import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/presentation/screens/board/bloc/board_state.dart';

import '../../../../domain/model/board.dart';
import '../../../../domain/repository/board_repository.dart';
import 'board_event.dart';


class BoardBloc extends Bloc<BoardEvent,BoardState>{
  final BoardRepository _boardRepository;

  BoardBloc(this._boardRepository) : super(BoardInitialState()){
    on<BoardAddEvent>((event, emit) async{
      emit(BoardLoadingState());
      try{
        await _boardRepository.addBoard(event.board);
        emit(BoardAddedState());
      }catch(e){
        emit(BoardErrorState(e.toString()));
      }
    });

    on<BoardFetchEvent>((event,emit) async{
      emit(BoardLoadingState());
      try{
        // final boards = await _boardRepository.fetchBoards();
        final boards = <Board>[
          Board(postId: "postId1", userId: "userId", nickName: "nickName", title: "title1", content: "content", imageUrl: "imageUrl", likeNum: "likeNum", createdAt: "createdAt", updatedAt: "updatedAt"),
            Board(postId: "postId2", userId: "userId", nickName: "nickName", title: "title2", content: "content", imageUrl: "imageUrl", likeNum: "likeNum", createdAt: "createdAt", updatedAt: "updatedAt"),
        ];
        emit(BoardLoadedState(boards));
      }catch(e){
        emit(BoardErrorState(e.toString()));
      }
    });


  }

}