import 'package:flutter/material.dart';

class AttendTopAppBar extends StatefulWidget implements PreferredSizeWidget{
  const AttendTopAppBar({super.key});

  @override
  State<AttendTopAppBar> createState() => _AttendTopAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AttendTopAppBarState extends State<AttendTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("토요일"),

    );
  }
}
