import 'package:flutter/material.dart';
import 'package:music_camp/widget/attend_circle_slider.dart';

class AttendListView extends StatefulWidget {
  const AttendListView({super.key});

  @override
  State<AttendListView> createState() => _AttendListViewState();
}

class _AttendListViewState extends State<AttendListView> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      children: [
        Text("출석"),
        AttendCircleSlider(),
        Text("결석"),
        AttendCircleSlider(),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 참석 체크 박스
            Row(
              children: [
                Text("참석"),
                Checkbox(
                  tristate: true,
                  value: isChecked!,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ],
            ),
            // 결석 체크 박스
            Row(
              children: [
                Text("결석"),
                Checkbox(
                  tristate: true,
                  value: !isChecked!,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = !value!;
                    });
                  },
                ),
              ],
            ),
            // 완료 버튼
            TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                        Icons.check,
                        color: Colors.black
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Text("완료", style:TextStyle(color:Colors.black))
                  ],
                ),
                // 버튼의 모양
                style : ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      )
                  ),

                )
            ),
          ],
        ),

      ],
    );
  }
}

