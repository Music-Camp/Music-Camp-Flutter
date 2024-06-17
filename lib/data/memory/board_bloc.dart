import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:music_camp/data/memory/bloc/bloc_status.dart';
import 'package:music_camp/data/memory/bloc/board_bloc_state.dart';
import 'package:music_camp/data/memory/bloc/board_event.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_state.dart';


import '../../domain/model/board.dart';

class BoardBloc extends Bloc<BoardEvent,BoardBlocState> {


  BoardBloc():super(const BoardBlocState(BlocStatus.initial, <Board>[])){
    on<BoardAddEvent>(_addBoard);
    on<BoardRemoveEvent>(_removeBoard);
  }

  void _addBoard(BoardEvent event, Emitter<BoardBlocState> emit) async {
    final copiedOldBoardList = List.of(state.boardList);

    copiedOldBoardList.add(
      Board(
        postId: 1,
        userId: 1,
        nickName: '',
        title: "",
        content: '테스트 내용',
        imageUrl: '',
        likeNum: 3,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    );
    emitNewList(copiedOldBoardList, emit);
  }

  void editBoard(Board board) async {

  }

  void _removeBoard(BoardRemoveEvent event, Emitter<BoardBlocState> emit){
    final board = event.removedBoard;
    final oldCopiedList = List<Board>.from(state.boardList);
    oldCopiedList.removeWhere((element) => element.postId == board.postId);
    emitNewList(oldCopiedList, emit);
  }

  void emitNewList(List<Board> copiedOldBoardList, Emitter<BoardBlocState> emit){
    emit(state.copyWith(boardList: copiedOldBoardList));
  }
}


