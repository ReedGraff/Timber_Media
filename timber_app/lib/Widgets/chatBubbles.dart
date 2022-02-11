/*
import 'package:flutter/material.dart';

import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';

import 'package:timber_app/Configs/constants/constants.dart';

class sentBubble extends StatelessWidget {
  const sentBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      shadowColor: Colors.transparent,
      clipper: ChatBubbleClipper4(type: BubbleType.sendBubble),
      margin: const EdgeInsets.only(top: 20),
      backGroundColor: veryDarkRed,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

class recievedBubble extends StatelessWidget {
  const recievedBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      shadowColor: Colors.transparent,
      clipper: ChatBubbleClipper4(type: BubbleType.receiverBubble),
      backGroundColor: veryLightRed,
      margin: EdgeInsets.only(top: 20),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: const Text(
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
*/