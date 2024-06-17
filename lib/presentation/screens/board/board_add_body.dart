import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../domain/model/board.dart';
import '../main/s_main.dart';
import 'bloc/board_bloc.dart';
import 'bloc/board_event.dart';
import 'component/board_add_photo_list_view.dart';

class BoardAddBody extends StatefulWidget {


  const BoardAddBody({super.key});

  @override
  State<BoardAddBody> createState() => _BoardAddBodyState();
}

class _BoardAddBodyState extends State<BoardAddBody> {
  final node = FocusNode();
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ).pLTRB(0, 0, 0, 10),
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
          ).pLTRB(0, 0, 0, 10),
          // 갤러리 버튼
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.photo),
              )
            ],
          ).pLTRB(0, 0, 0, 10),
          // 사진 리스트
          Container(
            height: 120,
            child: BoardAddPhotoListView(),
          ),
          // 제출 버튼 추가
          ElevatedButton(
            onPressed:() async {
              Board newBoard = Board(
                postId: "1",
                userId: "1",
                nickName: "nickName",
                title: titleController.text,
                content: contentController.text,
                imageUrl: "",
                likeNum: "1",
                createdAt: "2020/12/12",
                updatedAt: "2020/12/12",
              );

              context.read<BoardBloc>().add(BoardAddEvent(newBoard));

              Navigator.of(context).pop();

            }, // 버튼 클릭 시 _submitBoard 함수 호출
            child: Text("완료"),
          ),
        ],
      ),
    );
  }


}
