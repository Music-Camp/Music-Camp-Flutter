import 'package:flutter/material.dart';


import 'package:music_camp/data/respository_impl/board_repository_impl.dart';


import '../domain/model/board.dart';
import '../presentation/screens/board/board_detail_screen.dart';

class BoardListView extends StatefulWidget {
  const BoardListView({super.key});

  @override
  State<BoardListView> createState() => _BoardListViewState();
}

class _BoardListViewState extends State<BoardListView> {

  List<Board> _boardList = <Board>[];
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BoardService.getBoardList().then((value){
      _boardList = value;
      loading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return makeListItem(context,_boardList[index]);
      },
      itemCount: _boardList.length,
    );
  }
}

Widget makeListItem(BuildContext context,Board board) {
  return ListTile(
    leading: Image.network(
      board.imageUrl,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return CircularProgressIndicator();
      }
    ),
    title: Text(board.title),
    subtitle: Text(board.title),
    trailing: Text(board.nickName.toString()),
    isThreeLine: true,
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => BoardDetailScreen(),)
      );
    },
  );
}