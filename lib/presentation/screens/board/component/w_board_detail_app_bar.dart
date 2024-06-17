import 'package:flutter/material.dart';

class BoardDetailAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BoardDetailAppBar({super.key});

  @override
  State<BoardDetailAppBar> createState() => _BoardDetailAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _BoardDetailAppBarState extends State<BoardDetailAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("자유게시판"),
    );
  }
}
