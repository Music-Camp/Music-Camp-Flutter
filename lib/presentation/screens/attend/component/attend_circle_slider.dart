import 'package:flutter/material.dart';

class AttendCircleSlider extends StatefulWidget {
  const AttendCircleSlider({super.key});

  @override
  State<AttendCircleSlider> createState() => _AttendCircleSliderState();
}

class _AttendCircleSliderState extends State<AttendCircleSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        // 정렬
        // mainAxisAlignment : 순방향 정렬
        // crossAxisAlignment : 반대방향 정렬
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // 리스트 뷰의 크기를 컨테이너를 통해 설정한다.
            height: 120,
            // 다수의 항목을 보여주는 리스트 뷰는 builder를 통해 구성한다.
            child: ListView.builder(
              // 스크롤 방향을 가로 방향으로 설정한다.
              scrollDirection: Axis.horizontal,
              // 전체 항목의 개수
              itemCount: 10,
              // 항목 하나를 구성하기 위해 호출 하는 함수
              // 여기서 반환하는 위젯이 항목 하나가 된다.
              itemBuilder: (context, index) {
                return makeListItem(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget makeListItem(BuildContext context) {

  return InkWell(
    onTap: () {

    },
    child: Container(
      padding: EdgeInsets.only(right: 10),
      // 동그라미 형태로 보여주는 컨테이너
      child: Column(
        children: [
          CircleAvatar(
            // 배경 이미지
            backgroundImage: NetworkImage("https://www.ghibli.jp/gallery/totoro030.jpg"),
            onBackgroundImageError: (exception, stackTrace) {

            },
            // 크기
            radius: 24,
          ),
          Center(
            child: Text("안영준"),
          ),
        ],
      )
    ),
  );
}