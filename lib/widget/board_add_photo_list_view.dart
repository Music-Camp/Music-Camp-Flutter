import 'package:flutter/material.dart';

class BoardAddPhotoListView extends StatefulWidget {
  const BoardAddPhotoListView({super.key});

  @override
  State<BoardAddPhotoListView> createState() => _BoardAddPhotoListViewState();
}

class _BoardAddPhotoListViewState extends State<BoardAddPhotoListView> {
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
