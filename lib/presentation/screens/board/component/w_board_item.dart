import 'package:flutter/material.dart';
import 'package:music_camp/core/custom/custom_text.dart';
import 'package:music_camp/presentation/widget/w_count_icon.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../domain/model/board.dart';
import '../board_detail_screen.dart';

class BoardItem extends StatelessWidget {
  final Board board;

  BoardItem(this.board, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(),
              Text(
                "제목",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "내용",
              ).pLTRB(0, 10, 0, 10),
              Row(
                children: [
                  CountIcon(
                      iconData: Icons.thumb_up,
                      count: 3,
                      color: AppColors.thumbRed),
                  CountIcon(
                          iconData: Icons.chat_bubble,
                          count: 3,
                          color: AppColors.chatBlue)
                      .pLTRB(5, 0, 5, 0),
                  Text("2024/12/12").pLTRB(0, 0, 5, 0),
                  Text("닉네임"),

                ],
              ),
            ],
          ),
          Container(
            height: 70,
            width: 70,
            child: Image.asset('assets/image/img_dog.png',
            fit: BoxFit.fitHeight,),
          ),
        ],
      ),
    );
  }
}

// onTap: () {
// Navigator.of(context).push(MaterialPageRoute(
// builder: (context) => BoardDetailScreen(),
// ));
// },
