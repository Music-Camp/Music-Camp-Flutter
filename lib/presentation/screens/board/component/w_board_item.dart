import 'package:flutter/material.dart';
import 'package:music_camp/core/custom/custom_text.dart';
import 'package:music_camp/presentation/widget/w_count_icon.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../domain/model/board.dart';
import '../board_detail_screen.dart';

class BoardItem extends StatelessWidget {
  final Board board;

  BoardItem({super.key, required this.board,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BoardDetailScreen(),
        ));
      },
      child: SizedBox(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //Expanded(child: Divider(thickness: 2.0)),
                Text(
                  "${board.title}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "${board.content}",
                ).pLTRB(0, 10, 0, 10),
                Row(
                  children: [
                    CountIcon(
                        iconData: Icons.thumb_up_outlined,
                        count: 3,
                        color: AppColors.thumbRed),
                    CountIcon(
                            iconData: Icons.chat_bubble_outline,
                            count: 3,
                            color: AppColors.chatBlue)
                        .pLTRB(5, 0, 5, 0),
                    Text("${board.createdAt}").pLTRB(0, 0, 5, 0),
                    Text("${board.nickName}"),
                  ],
                ),
              ],
            ),
            Container(
              height: 70,
              width: 70,
              child: Image.asset(
                'assets/image/img_dog.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
