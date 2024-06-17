import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:music_camp/presentation/main/cubit/bottom_nav_cubit.dart';
import 'package:music_camp/presentation/screens/attend/s_attend.dart';
import 'package:music_camp/presentation/screens/board/board_screen.dart';
import 'package:music_camp/presentation/screens/login/login_main_screen.dart';
import 'package:music_camp/presentation/screens/user/user_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: MainScreenView(),
    );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavCubit, BottomNav>(
        builder: (_, state) {
          switch (state) {
            case BottomNav.board:
              return const BoardScreen();
            case BottomNav.attend:
              return const AttendScreen();
            case BottomNav.user:
              return const UserScreen();
            case BottomNav.login:
              return const LoginMainScreen();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNav>(
        builder: (_, state) {

          return BottomNavigationBar(
            currentIndex: state.index,
            onTap: (index) => context.read<BottomNavCubit>().changeIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: '게시판',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check_box_outlined),
                label: '출석체크',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '프로필',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: '로그인',
              ),
            ],

            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          );
        },
      ),
    );
  }
}
