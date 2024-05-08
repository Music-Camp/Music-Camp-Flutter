import 'package:flutter/material.dart';

class BoardAddTopAppBar extends StatefulWidget implements PreferredSizeWidget{
  const BoardAddTopAppBar({super.key});

  @override
  State<BoardAddTopAppBar> createState() => _BoardAddTopAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _BoardAddTopAppBarState extends State<BoardAddTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("자유게시판"),
      actions: [
        IconButton(
            onPressed:(){},
            icon: Icon(Icons.done)
        )
      ],

    );
  }
}
