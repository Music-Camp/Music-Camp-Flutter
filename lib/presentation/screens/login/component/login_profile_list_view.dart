import 'package:flutter/material.dart';

enum WeekLabel {
  monday('월'),
  tuesday('화'),
  wednesday('수'),
  thursday('목'),
  friday('금'),
  saturday('토'),
  sunday('일');

  const WeekLabel(this.label);
  final String label;

}

class LoginProfileListView extends StatefulWidget {
  const LoginProfileListView({super.key});

  @override
  State<LoginProfileListView> createState() => _LoginProfileListViewState();
}

class _LoginProfileListViewState extends State<LoginProfileListView> {
  final TextEditingController weekController = TextEditingController();
  WeekLabel? selectedWeek;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      children: [
        Center(
          child: Column(
            children: [
              // 프로필 텍스트
              Text(
                "프로필",
                style: TextStyle(fontSize: 50),
              ),
              // 프로필 이미지뷰
              Padding(padding: EdgeInsets.only(top: 50)),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("lib/assets/images/img_dog.jpg"),
              ),
              // 요일
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DropdownMenu<WeekLabel>(
                    initialSelection: WeekLabel.saturday,
                    controller: weekController,
                    // requestFocusOnTap is enabled/disabled by platforms when it is null.
                    // On mobile platforms, this is false by default. Setting this to true will
                    // trigger focus request on the text field and virtual keyboard will appear
                    // afterward. On desktop platforms however, this defaults to true.
                    requestFocusOnTap: true,
                    label: const Text('요일'),
                    onSelected: (WeekLabel? week) {
                      setState(() {
                        selectedWeek = week;
                      });
                    },
                    dropdownMenuEntries: WeekLabel.values
                        .map<DropdownMenuEntry<WeekLabel>>(
                            (WeekLabel week) {
                          return DropdownMenuEntry<WeekLabel>(
                            value: week,
                            label: week.label,
                          );
                        }).toList(),
                  ),
                ],),
              // 닉네임 TextField
              Padding(padding: EdgeInsets.only(top: 50)),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.clear),
                  labelText: '닉네임',
                  hintText: '닉네임을 입력하세요',
                  border: OutlineInputBorder(),
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }
}
