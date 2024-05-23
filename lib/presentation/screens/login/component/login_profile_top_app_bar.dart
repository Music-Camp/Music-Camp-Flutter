import 'package:flutter/material.dart';

class LoginProfileTopAppBar extends StatefulWidget implements PreferredSizeWidget{
  const LoginProfileTopAppBar({super.key});

  @override
  State<LoginProfileTopAppBar> createState() => _LoginProfileTopAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _LoginProfileTopAppBarState extends State<LoginProfileTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_forward)
        )
      ],
    );
  }
}
