import 'package:flutter/material.dart';
import 'package:music_camp/widget/attend_top_app_bar.dart';

import '../widget/attend_list_view.dart';

class AttendScreen extends StatefulWidget {
  const AttendScreen({super.key});

  @override
  State<AttendScreen> createState() => _AttendScreenState();
}

class _AttendScreenState extends State<AttendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AttendTopAppBar(),
      body: AttendListView(),
    );
  }
}
