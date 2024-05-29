import 'package:flutter/material.dart';
import 'package:music_camp/presentation/main/provider/tab_page_index_provider.dart';
import 'package:music_camp/presentation/screens/main/s_main.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';



void main() async{
  final bindings = WidgetsFlutterBinding.ensureInitialized();
  // 네이티브 화면을 보존해줌
  // main에서 지워주는 코드를 작성해야함
  FlutterNativeSplash.preserve(widgetsBinding: bindings);

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
      home: const MainScreen(),
    );
  }
}
