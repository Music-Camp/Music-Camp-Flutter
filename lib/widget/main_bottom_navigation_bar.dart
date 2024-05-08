 import 'package:flutter/material.dart';
import 'package:music_camp/provider/tab_page_index_provider.dart';
import 'package:provider/provider.dart';

class MainBottomNavigationBar extends StatefulWidget {
   const MainBottomNavigationBar({super.key});

   @override
   State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
 }

 class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  // 네비게이션 바에서 선택되어 있는 아이콘의 메뉴의 순서값
   // int tabPageIndex= 0;

   @override
   Widget build(BuildContext context) {

     var tabPageIndexProvider = Provider.of<TabPageIndexProvider>(context,listen: false);
     // 하단에 배치될 네비게이션 바
     return NavigationBar(
       height: kBottomNavigationBarHeight,
       destinations: [
         NavigationDestination(
           // 평상시의 아이콘
           icon: Icon(Icons.home_outlined),
           // 눌러졌을 때의 아이콘
           selectedIcon: Icon(Icons.home),
           label: "홈"
         ),
         NavigationDestination(
           // 평상시의 아이콘
             icon: Icon(Icons.check_circle_outline_outlined),
             // 눌러졌을 때의 아이콘
             selectedIcon: Icon(Icons.check_circle_outline),
             label: "출석"
         ),
         NavigationDestination(
           // 평상시의 아이콘
             icon: Icon(Icons.person_outlined),
             // 눌러졌을 때의 아이콘
             selectedIcon: Icon(Icons.person),
             label: "프로필"
         ),
       ],
       // 네비게이션 바에 배치된 아이콘 메뉴들 중 어떤 것을 선택할 것인가
       selectedIndex: tabPageIndexProvider.currentPageIndex,
       // 하단 메뉴를 눌렀을 때
       // value : 사용자가 누른 메뉴 항목의 순서값
       onDestinationSelected: (value){
         setState(() {
           tabPageIndexProvider.setCurrentPageIndex(value);
         });
       },
       // indicator 색상
       indicatorColor: Colors.white12,

     );
   }
 }
