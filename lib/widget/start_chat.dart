// ignore_for_file: prefer_const_constructors

import 'package:chat_app/app/modules/chat_all_participants/views/chat_all_participants_view.dart';
import 'package:chat_app/app/modules/chat_my_mentor/views/chat_my_mentor_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'card_widget.dart';

class StartChatWidget extends StatelessWidget {
  final String title;
  const StartChatWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        cardwidget(
          ontap_mymentor: () {
            Get.to(ChatMyMentorView());
          },
          ontap_all: () {
            Get.to(ChatAllParticipantsView());
          },
          icon: Icons.person,
          title: "Practice Maths",
          subtitle: "Mentor- Jatin",
          like: "5",
        ),
        cardwidget(
          ontap_mymentor: () {
            Get.to(ChatMyMentorView());
          },
          ontap_all: () {
            Get.to(ChatAllParticipantsView());
          },
          icon: Icons.person,
          title: "Breathing",
          subtitle: "Mentor -Tanvi",
          like: "24",
        )
      ],
    );
  }
}
