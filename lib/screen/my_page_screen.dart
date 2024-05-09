import 'package:flutter/material.dart';
import 'package:music_camp/widget/my_page_list_view.dart';
import 'package:music_camp/widget/my_page_top_app_bar.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyPageTopAppBar(),
      body: MyPageListView(),
    );
  }
}
