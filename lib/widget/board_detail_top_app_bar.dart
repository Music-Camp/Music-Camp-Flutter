import 'package:flutter/material.dart';

class BoardDetailTopAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BoardDetailTopAppBar({super.key});

  @override
  State<BoardDetailTopAppBar> createState() => _BoardDetailTopAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _BoardDetailTopAppBarState extends State<BoardDetailTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("자유게시판"),
    );
  }
}
