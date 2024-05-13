import 'dart:convert';

import '../model/board.dart';
import 'package:http/http.dart' as http;

class BoardService {
  static const String url = 'http://52.78.37.57:8080/music/post';

  static Future<List<Board>> getBoardList() async {
    try{
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        // return boardResponseFromJsonDecode(response).result;
        return boardResponseFromJson(response.body).result;
      }else{
        print("게시판 GET 실패 else ${response.statusCode}");
        return <Board>[];
      }
    }catch(e){
      print("게시판 GET 실패 catch");
      return <Board>[];
    }
  }
}
