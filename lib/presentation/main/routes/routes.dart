import 'package:go_router/go_router.dart';
import 'package:music_camp/presentation/main/routes/route_path.dart';
import 'package:music_camp/presentation/screens/attend/s_attend.dart';
import 'package:music_camp/presentation/screens/board/board_screen.dart';
import 'package:music_camp/presentation/screens/login/login_main_screen.dart';
import 'package:music_camp/presentation/screens/user/user_screen.dart';

import '../../screens/main/s_main.dart';
import '../../screens/splash/s_splash.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RoutePath.splash,
      name: 'splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: RoutePath.main,
      name: 'main',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: RoutePath.board,
      name: 'board',
      builder: (context, state) => const BoardScreen(),
    ),
    GoRoute(
      path: RoutePath.attend,
      name: 'attend',
      builder: (context, state) => const AttendScreen(),
    ),
    GoRoute(
      path: RoutePath.user,
      name: 'user',
      builder: (context, state) => const UserScreen(),
    ),
    GoRoute(
      path: RoutePath.login,
      name: 'login',
      builder: (context, state) => const LoginMainScreen(),
    ),

  ],
  initialLocation: '/splash',
);

