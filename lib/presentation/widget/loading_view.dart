import 'package:flutter/material.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child:CircularProgressIndicator(),
      ),
    );
  }
}
