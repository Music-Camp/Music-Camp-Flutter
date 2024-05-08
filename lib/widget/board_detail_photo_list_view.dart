import 'package:flutter/material.dart';

class BoardDetailPhotoListView extends StatefulWidget {
  const BoardDetailPhotoListView({super.key});

  @override
  State<BoardDetailPhotoListView> createState() => _BoardDetailPhotoListViewState();
}

class _BoardDetailPhotoListViewState extends State<BoardDetailPhotoListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => makeListItem(context),
      itemCount: 4,
      scrollDirection: Axis.horizontal,
    );
  }
}

Widget makeListItem(BuildContext context){
  return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Row(
        children: [
          Image.asset(
            "lib/assets/images/img_dog.jpg",
            width: 100,
          )
        ],
      )
  );
}
