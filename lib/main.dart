import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:music_camp/data/memory/board_bloc.dart';
import 'package:music_camp/presentation/main/routes/routes.dart';

import 'package:timeago_flutter/timeago_flutter.dart' as timeago;

void main() async {
  // final bindings = WidgetsFlutterBinding.ensureInitialized();
  // 네이티브 화면을 보존해줌
  // main에서 지워주는 코드를 작성해야함
  // FlutterNativeSplash.preserve(widgetsBinding: bindings);
  timeago.setLocaleMessages('ko', timeago.KoMessages());

  runApp(MusicCampApp());
}

class MusicCampApp extends StatefulWidget {
  const MusicCampApp({super.key});

  @override
  State<MusicCampApp> createState() => _MusicCampAppState();
}

class _MusicCampAppState extends State<MusicCampApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) {
            return BoardBloc();
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: router,
        title: 'MusicCamp',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                // 전체적인 어플의 테마를 어두운 테마로 설정한다.
                brightness: Brightness.dark),
            useMaterial3: true),
      ),
    );
  }
}
