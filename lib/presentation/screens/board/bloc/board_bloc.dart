import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/presentation/screens/board/bloc/board_state.dart';

import '../../../../domain/repository/board_repository.dart';
import 'board_event.dart';


class BoardBloc extends Bloc<BoardEvent,BoardState>{
  final BoardRepository _boardRepository;

  BoardBloc(this._boardRepository) : super(BoardInitial()){
    on<BoardAddEvent>((event, emit) async{
      emit(BoardLoading());
      try{
        await _boardRepository.addBoard(event.board);
        emit(BoardAdded());
      }catch(e){
        emit(BoardError(e.toString()));
      }
    });

    on<BoardFetchEvent>((event,emit) async{
      emit(BoardLoading());
      try{
        final boards = await _boardRepository.fetchBoards();
        emit(BoardLoaded(boards));
      }catch(e){
        emit(BoardError(e.toString()));
      }
    });


  }

}