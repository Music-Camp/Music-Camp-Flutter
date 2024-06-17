import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_camp/presentation/screens/board/board_add_body.dart';
import 'package:music_camp/presentation/screens/board/component/board_add_top_app_bar.dart';
import 'package:music_camp/presentation/screens/main/s_main.dart';

import '../../../domain/model/board.dart';
import 'bloc/board_bloc.dart';
import 'bloc/board_event.dart';
import 'component/board_add_photo_list_view.dart';

class BoardAddScreen extends StatefulWidget {

  const BoardAddScreen({super.key});

  @override
  State<BoardAddScreen> createState() => _BoardAddScreenState();
}

class _BoardAddScreenState extends State<BoardAddScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardAddTopAppBar(),
      body: BoardAddBody(),
    );
  }
}
