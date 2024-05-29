import 'package:flutter/material.dart';

class MyPageListView extends StatefulWidget {
  const MyPageListView({super.key});

  @override
  State<MyPageListView> createState() => _MyPageListViewState();
}

class _MyPageListViewState extends State<MyPageListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(padding: EdgeInsets.only(top:50)),
      // 프로필 사진
      Center(
        child: CircleAvatar(
          backgroundImage: AssetImage("lib/assets/images/img_dog.jpg"),
          radius: 50,
        ),
      ),
      // 닉네임
      Padding(padding: EdgeInsets.only(top : 10)),
      Center(
        child: Text("닉네임"),
      ),

    ]);
  }
}
