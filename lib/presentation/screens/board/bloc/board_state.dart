import 'package:equatable/equatable.dart';
import 'package:music_camp/domain/model/board.dart';

abstract class BoardState extends Equatable{
  @override
  List<Object?> get props => [];
}

class BoardInitial extends BoardState{}
class BoardLoading extends BoardState{}
class BoardLoaded extends BoardState{
  final List<Board> boards;

  BoardLoaded(this.boards);
}
class BoardAdded extends BoardState{}

class BoardError extends BoardState{
  final String message;

  BoardError(this.message);

  @override
  List<Object?> get props => [message];
}

