import 'package:equatable/equatable.dart';
import 'package:music_camp/domain/model/board.dart';

sealed class BoardState extends Equatable{
  @override
  List<Object?> get props => [];
}

class BoardInitialState extends BoardState{}
class BoardLoadingState extends BoardState{}
class BoardLoadedState extends BoardState{
  final List<Board> boards;

  BoardLoadedState(this.boards);
}
class BoardAddedState extends BoardState{}

class BoardErrorState extends BoardState{
  final String message;

  BoardErrorState(this.message);

  @override
  List<Object?> get props => [message];
}

