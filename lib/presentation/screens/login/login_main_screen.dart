import 'package:flutter/material.dart';

import 'login_profile_screen.dart';

class LoginMainScreen extends StatefulWidget {
  const LoginMainScreen({super.key});

  @override
  State<LoginMainScreen> createState() => _LoginMainScreenState();
}

class _LoginMainScreenState extends State<LoginMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginProfileScreen(),)
                  );
                },
                child: Image.asset("assets/image/kakao_login_btn.png"),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10))
            ]
          ),
    ));
  }
}
