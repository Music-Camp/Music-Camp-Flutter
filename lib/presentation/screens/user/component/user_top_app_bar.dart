import 'package:flutter/material.dart';

class MyPageTopAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyPageTopAppBar({super.key});

  @override
  State<MyPageTopAppBar> createState() => _MyPageTopAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyPageTopAppBarState extends State<MyPageTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("마이페이지"),
    );
  }
}
