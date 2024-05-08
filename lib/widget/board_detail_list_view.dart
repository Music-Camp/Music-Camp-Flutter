import 'package:flutter/material.dart';
import 'package:music_camp/widget/board_detail_photo_list_view.dart';

class BoardDetailListView extends StatefulWidget {
  const BoardDetailListView({super.key});

  @override
  State<BoardDetailListView> createState() => _BoardDetailListViewState();
}

class _BoardDetailListViewState extends State<BoardDetailListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      children: [
        // 제목
        TextField(
          readOnly: true,
          decoration: InputDecoration(
            hintText: "우리집 강아지에욤",
            filled: true,
            fillColor: Colors.transparent,
          ),

        ),
        Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
        // 내용
        TextField(
          readOnly: true,
          decoration: InputDecoration(
            hintMaxLines: 10,
            hintText: "안녕하세요 내 강아지 귀엽지욤?\n룰루랄라",
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
              onPressed: (){},
              icon: Icon(Icons.photo),

            )
          ],
        ),
        Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
        // 사진 리스트
        Container(
          height: 120,
          child: BoardDetailPhotoListView()
        )

      ],
    );
  }
}
