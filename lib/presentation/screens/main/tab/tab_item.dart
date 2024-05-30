import 'package:flutter/material.dart';
import 'package:music_camp/presentation/screens/attend/s_attend.dart';
import 'package:music_camp/presentation/screens/board/s_board.dart';
import 'package:music_camp/presentation/screens/login/login_main_screen.dart';
import 'package:music_camp/presentation/screens/user/user_screen.dart';

enum TabItem {
  board(Icons.book, '게시판', BoardScreen()),
  attend(Icons.check_circle, '출석', AttendScreen()),
  user(Icons.person, '유저', UserScreen()),
  login(Icons.login, '로그인', LoginMainScreen());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          // color: isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}

