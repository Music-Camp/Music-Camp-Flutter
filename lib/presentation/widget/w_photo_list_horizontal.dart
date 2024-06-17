import 'package:flutter/material.dart';

class PhotoListHorizontal extends StatefulWidget {
  const PhotoListHorizontal({super.key});

  @override
  State<PhotoListHorizontal> createState() => _PhotoListHorizontalState();
}

class _PhotoListHorizontalState extends State<PhotoListHorizontal> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => photoItem(context),
      itemCount: 5,
      scrollDirection: Axis.horizontal,
    );
  }
}

Widget photoItem(BuildContext context){
  return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Row(
        children: [
          Image.asset(
            "assets/image/img_dog.png",
            width: 300,
          )
        ],
      )
  );
}

