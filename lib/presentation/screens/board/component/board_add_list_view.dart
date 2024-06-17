import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

import '../../../../core/util/app_keyboard_util.dart';
import 'board_add_photo_list_view.dart';

class BoardAddListView extends StatefulWidget {
  const BoardAddListView({super.key});

  @override
  State<BoardAddListView> createState() => _BoardAddListViewState();
}

class _BoardAddListViewState extends State<BoardAddListView> with AfterLayoutMixin{
  final textController = TextEditingController();
  final node = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // 제목
        TextField(
          focusNode: node,
          controller: textController,
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
              onPressed: (){},
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
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    AppKeyboardUtil.show(context, node);
  }
}
