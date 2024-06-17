import 'package:music_camp/domain/model/board.dart';

abstract class BoardEvent{}

class BoardAddEvent extends BoardEvent{

}

class BoardRemoveEvent extends BoardEvent{
  final Board removedBoard;

  BoardRemoveEvent(this.removedBoard);
}