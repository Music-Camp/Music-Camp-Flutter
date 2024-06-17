import 'package:flutter/material.dart';
import 'package:music_camp/core/constant/app_colors.dart';
import 'package:music_camp/presentation/widget/w_content_textfield.dart';
import 'package:music_camp/presentation/widget/w_count_icon.dart';
import 'package:music_camp/presentation/widget/w_photo_list_horizontal.dart';
import 'package:music_camp/presentation/widget/w_title_textfield.dart';
import 'package:timeago_flutter/timeago_flutter.dart' as timeago;

import 'component/w_board_detail_app_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class BoardDetailScreen extends StatefulWidget {
  const BoardDetailScreen({super.key});

  @override
  State<BoardDetailScreen> createState() => _BoardDetailScreenState();
}

class _BoardDetailScreenState extends State<BoardDetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardDetailAppBar(),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        children: [
          timeago.format(
            DateTime(2024,5,30,14,10),
            locale: 'ko',
          ).text.make(),
          TitleTextField(title: "외톨이", readOnly: true).pLTRB(0, 10, 0, 0),
          ContentTextField(
                  content:
                      "상처를 치료해줄 사람 어디 없나가만히 놔두다간 끊임없이 덧나사랑도 사람도 너무나도 겁나혼자인게 무서워 난 잊혀질까 두려워상처를 치료해줄 사람 어디 없나가만히 놔두다간 끊임없이 덧나사랑도 사람도 너무나도 겁나혼자인게 무서워 난 잊혀질까 두려워언제나 외톨이 맘의 문을 닫고슬픔을 등에 지고 살아가는 바보두 눈을 감고 두 귀를 막고캄캄한 어둠속에 내 자신을 가둬365일 1년 내내방황하는 내 영혼을 쫓아 키를 잡은 Jack Sparrow몰아치는 Hurricane 졸라매는 허리끈에방향감을 상실하고 길을 잃은 소리꾼",
                  readOnly: true)
              .pLTRB(0, 10, 0, 10),
          // 사진 리스트
          Container(
            height: 200,
            child: PhotoListHorizontal(),
          ),
          // 아이콘들
          Row(
            children: [
              // 좋아요 아이콘
              CountIcon(
                  iconData: Icons.thumb_up_outlined,
                  count: 3,
                  color: AppColors.thumbRed),
              // 채팅 아이콘
              CountIcon(
                      iconData: Icons.chat_bubble_outline,
                      count: 5,
                      color: AppColors.chatBlue)
                  .pLTRB(10, 0, 0, 0),
            ],
          )
        ],
      ),
    );
  }
}
