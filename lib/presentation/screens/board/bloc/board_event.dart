import 'package:equatable/equatable.dart';

import '../../../../domain/model/board.dart';

sealed class BoardEvent extends Equatable{

  @override
  List<Object?> get props => [];
}

final class BoardAddEvent extends BoardEvent{
  final Board board;

  BoardAddEvent(this.board);
}

final class BoardFetchEvent extends BoardEvent{

}

final class BoardRemoveEvent extends BoardEvent{

}

final class BoardEditEvent extends BoardEvent{}