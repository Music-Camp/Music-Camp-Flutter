import 'dart:convert';

import '../../domain/model/board.dart';

import 'package:http/http.dart' as http;

import '../../domain/repository/board_repository.dart';

class BoardRepositoryImpl extends BoardRepository {
  @override
  Future<Board> addBoard(Board board) {
    // TODO: implement addBoard
    throw UnimplementedError();
  }

  @override
  Future<List<Board>> fetchBoards() {
    // TODO: implement fetchBoards
    throw UnimplementedError();
  }


}
