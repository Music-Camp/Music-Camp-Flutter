import 'package:flutter/material.dart';
import 'package:music_camp/presentation/screens/login/component/login_profile_list_view.dart';
import 'package:music_camp/presentation/screens/login/component/login_profile_top_app_bar.dart';

class LoginProfileScreen extends StatefulWidget {
  const LoginProfileScreen({super.key});

  @override
  State<LoginProfileScreen> createState() => _LoginProfileScreenState();
}

class _LoginProfileScreenState extends State<LoginProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginProfileTopAppBar(),
      body: LoginProfileListView(),
    );
  }
}
