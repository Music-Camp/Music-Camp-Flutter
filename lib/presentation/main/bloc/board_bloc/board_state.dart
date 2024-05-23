// state : 앱의 상태
// 게시판에서의 내부 상태는 데이터를 가져오는 것, 로딩, 에러 등으로 일단 생각
import 'package:equatable/equatable.dart';

import '../../../../domain/model/board.dart';

abstract class BoardState extends Equatable{
  const BoardState();

  @override
  List<Object?> get props => [];
}

class BoardLoaded extends BoardState{
  final List<Board> boardList;

  const BoardLoaded(this.boardList);

  @override
  List<Object?> get props => [boardList];

}

class BoardError extends BoardState{}

class BoardLoading extends BoardState{}