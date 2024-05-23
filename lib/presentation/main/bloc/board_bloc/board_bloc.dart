import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/domain/repository/board_repository.dart';
import 'package:music_camp/presentation/main/bloc/board_bloc/board_event.dart';

import 'board_state.dart';

class BoardBloc extends Bloc<BoardEvent, BoardState>{
  final BoardRepository boardRepository;

  BoardBloc(this.boardRepository) : super(BoardLoading()){
    on<FetchBoardListEvent>(_onFetchBoardList);
  }

  void _onFetchBoardList(FetchBoardListEvent event, Emitter<BoardState> emit) async{
    try{
      final boardList = await boardRepository.fetchBoardList();
      emit(BoardLoaded(boardList));
    }catch (e){
      emit(BoardError());
    }
  }
}