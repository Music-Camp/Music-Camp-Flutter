import 'package:music_camp/domain/repository/repository.dart';

import '../model/board.dart';

abstract class BoardRepository extends Repository{

  // 게시판 리스트 가져오기
  Future<List<Board>> fetchBoards();

  Future<Board> addBoard(Board board);
}