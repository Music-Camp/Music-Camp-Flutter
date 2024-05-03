import 'package:flutter/material.dart';

class BoardTopAppBar extends StatefulWidget implements PreferredSizeWidget{
  const BoardTopAppBar({super.key});

  @override
  State<BoardTopAppBar> createState() => _BoardTopAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _BoardTopAppBarState extends State<BoardTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title : Text("자유게시판")
    );
  }
}
