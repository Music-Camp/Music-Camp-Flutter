import 'package:flutter/material.dart';

class BoardAppBar extends StatefulWidget implements PreferredSizeWidget{
  const BoardAppBar({super.key});

  @override
  State<BoardAppBar> createState() => _BoardAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _BoardAppBarState extends State<BoardAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title : Text("자유게시판")
    );
  }
}
