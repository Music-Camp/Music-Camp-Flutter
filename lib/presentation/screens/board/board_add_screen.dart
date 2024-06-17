import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/data/memory/bloc/board_event.dart';

import 'package:music_camp/data/memory/board_bloc.dart';
import 'package:music_camp/presentation/screens/board/component/board_add_top_app_bar.dart';
import 'package:music_camp/presentation/screens/board/board_screen.dart';
import 'package:music_camp/presentation/screens/main/s_main.dart';

import 'component/board_add_photo_list_view.dart';

class BoardAddScreen extends StatefulWidget {
  const BoardAddScreen({super.key});

  @override
  State<BoardAddScreen> createState() => _BoardAddScreenState();
}

class _BoardAddScreenState extends State<BoardAddScreen>
    with SingleTickerProviderStateMixin {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final node = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardAddTopAppBar(),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView(
          children: [
            // 제목
            TextField(
              focusNode: node,
              controller: titleController,
              autofocus: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.clear),
                labelText: '제목',
                hintText: '제목을 입력해주세요',
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            // 내용
            TextField(
              controller: contentController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.clear),
                labelText: '내용',
                hintText: '내용을 입력해주세요',
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            // 갤러리 버튼
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.photo),
                )
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            // 사진 리스트
            Container(
              height: 120,
              child: BoardAddPhotoListView(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        backgroundColor: Colors.grey,
        onPressed: () async{
          context.read<BoardBloc>().add(BoardAddEvent());
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => MainScreen(),
              fullscreenDialog: true));
        },
      ),
    );
  }
}
