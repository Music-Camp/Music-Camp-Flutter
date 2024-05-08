import 'package:flutter/material.dart';

class BoardListView extends StatefulWidget {
  const BoardListView({super.key});

  @override
  State<BoardListView> createState() => _BoardListViewState();
}

class _BoardListViewState extends State<BoardListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return makeListItem(context);
        },
        itemCount: 10,
    );
  }
}

Widget makeListItem(BuildContext context){
  return ListTile(
    leading: Image.asset('lib/assets/images/img_dog.jpg') ,
    title: Text("우리 강아지"),
    subtitle: Text("우리 강아지 귀엽지욤?"),
    isThreeLine: true,
    onTap: (){

    },
  );
}
