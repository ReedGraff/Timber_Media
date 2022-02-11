// This Widget is for the chat interface...

// Flutter
import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';

class ChatBar extends StatelessWidget {
  final String date;
  final String content;

  const ChatBar({Key? key, required this.date, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            date,
            style: const TextStyle(fontSize: 10, color: textColor),
            textAlign: TextAlign.left
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            content,
            style: const TextStyle(fontSize: 15, color: textColor),
            textAlign: TextAlign.left
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          color: textColor,
          thickness: 0.5,
        ),
      ],
    );
  }
}
