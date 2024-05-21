import 'package:flutter/material.dart';
import 'package:music_camp/widget/board_detail_list_view.dart';
import 'package:music_camp/widget/board_detail_top_app_bar.dart';

class BoardDetailScreen extends StatefulWidget {
  const BoardDetailScreen({super.key});

  @override
  State<BoardDetailScreen> createState() => _BoardDetailScreenState();
}

class _BoardDetailScreenState extends State<BoardDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardDetailTopAppBar(),
      body: BoardDetailListView(),
    );
  }
}
