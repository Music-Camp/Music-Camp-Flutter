import 'package:flutter/material.dart';
import 'package:music_camp/presentation/screens/home/main_screen.dart';
import 'package:music_camp/provider/tab_page_index_provider.dart';

import 'package:music_camp/widget/main_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MusicCampApp());
}

class MusicCampApp extends StatefulWidget {
  const MusicCampApp({super.key});

  @override
  State<MusicCampApp> createState() => _MusicCampAppState();
}

class _MusicCampAppState extends State<MusicCampApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MusicCamp',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                // 전체적인 어플의 테마를 어두운 테마로 설정한다.
                brightness: Brightness.dark),
            useMaterial3: true),

        home: ChangeNotifierProvider(
          create: (BuildContext context) => TabPageIndexProvider(),
          child: Scaffold(
            bottomNavigationBar: MainBottomNavigationBar(),
            body: MainScreen(),
          ),
        ));
  }
}
