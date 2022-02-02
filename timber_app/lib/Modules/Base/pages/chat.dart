// This Screen is for the chat interface

// Flutter
import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  final messageController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Text(
                  "hi",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ),
        TextField(
          controller: messageController,
          decoration:
              const InputDecoration(label: Text("Type your message here!")),
        ),
        /*
        Row(
          children: [
            TextField(
              controller: messageController,
              decoration:
                  const InputDecoration(label: Text("Type your message here!")),
            ),
            /*
            const Icon(
              Icons.send,
              size: 50,
            )
            */
          ],
        )*/
      ]),
      backgroundColor: Colors.transparent,
    );
  }
}


