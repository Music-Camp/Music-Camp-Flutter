
import 'package:music_camp/data/data_source/mock/board/board_mock_data.dart';
import 'package:music_camp/domain/model/board.dart';
import 'package:music_camp/domain/repository/board_repository.dart';

class BoardMockRepositoryImpl implements BoardRepository{
  @override
  Future<List<Board>> fetchBoardList() async {
    // try{
    //   final response = BoardMockData();
    //   if(response.statusCode == 200){
    //     // return boardResponseFromJsonDecode(response).result;
    //     return boardResponseFromJson(response.body).result;
    //   }else{
    //     print("게시판 GET 실패 else ${response.statusCode}");
    //     return <Board>[];
    //   }
    // }catch(e){
    //   print("게시판 GET 실패 catch");
    //   return <Board>[];
    // }
      return <Board>[];
  }

}