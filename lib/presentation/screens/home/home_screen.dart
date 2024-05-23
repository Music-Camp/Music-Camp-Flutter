import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:music_camp/presentation/screens/attend/attend_screen.dart';
import 'package:music_camp/presentation/screens/login/login_main_screen.dart';
import 'package:music_camp/presentation/screens/my_page/my_page_screen.dart';
import 'package:provider/provider.dart';

import '../../main/provider/tab_page_index_provider.dart';
import '../board/board_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    // Provider
    var tabPageIndexProvider = Provider.of<TabPageIndexProvider>(context, listen: false);
    // 보여줄 화면의 순서값
    var currentPageIndex = tabPageIndexProvider.currentPageIndex;

    // 프로바이더의 리스너를 등록해준다.
    // 프로바이더에서 notifyListeners(); 를 호출하면 동작한다.
    tabPageIndexProvider.addListener(() {
      setState(() {
        currentPageIndex = tabPageIndexProvider.currentPageIndex;
      });
    });

    return Container(
      child: [
        BoardScreen(),
        AttendScreen(),
        MyPageScreen(),
        LoginMainScreen(),
      ][currentPageIndex],
    );
  }
}
