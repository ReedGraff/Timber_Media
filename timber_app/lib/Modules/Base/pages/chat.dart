// This Screen is for the chat interface

// Flutter
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

// External
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

// Local
import 'package:timber_app/Configs/constants/constants.dart';
import 'package:timber_app/Widgets/chatBars.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  late Future<dynamic> _data;
  TextEditingController messageController = TextEditingController();

  firebasePost() {
    var url = Uri.parse(
        "https://timber-d688b-default-rtdb.firebaseio.com/messages.json");

    DateFormat dateFormat = DateFormat("dd/MM/yyyy HH:mm:ss");
    String date = dateFormat
        .format(DateTime.now()); //Converting DateTime object to String

    http.post(url,
        body: convert.jsonEncode({
          'date': date,
          'content': messageController.text,
        }));
    
    setState(() {
      _data = firebaseGet();
    });
  }

  //https://timber-d688b-default-rtdb.firebaseio.com/.json

  firebaseGet() async {
    var url = Uri.parse(
        "https://timber-d688b-default-rtdb.firebaseio.com/messages.json");

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      // Delete all null values
      //print(jsonResponse);
      //jsonResponse.removeWhere((key, value) => key == null || value == null);

      var data = [];
      for (final item in jsonResponse.keys) {
        print(item);
        if (item != null) {
          data.add(ChatBar(
              date: jsonResponse[item]['date'] ?? 'date',
              content: jsonResponse[item]['content'] ?? 'content'));
        }
      }
      return data;
    } else {
      //print("failed with ${response.statusCode}");
      return const Text("Get better wifi bum");
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    messageController.dispose();
    super.dispose();
  }

  @override
  initState() {
    super.initState();
    _data = firebaseGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(children: [
        Expanded(
            child: Padding(
          child: SingleChildScrollView(
            reverse: true,
            child: FutureBuilder<dynamic>(
                future: _data, // a previously-obtained Future<String> or null
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ChatBar(date: "", content: "Loading")
                        ]);
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const Text('Error');
                    } else if (snapshot.hasData) {
                      List<Widget> dataList = List<Widget>.from(snapshot.data);

                      return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: dataList);
                    } else {
                      return const Text('Empty data');
                    }
                  } else {
                    return Text('State: ${snapshot.connectionState}');
                  }
                }),
          ),
          padding: const EdgeInsets.all(10),
        )),
        Padding(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messageController,
                  style: const TextStyle(fontSize: 15, color: textColor),
                  //keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type your message here!",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.send,
                  size: 20,
                  color: textColor,
                ),
                onPressed: () {
                  firebasePost();
                  messageController.clear();
                },
              ),
            ],
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
        )
      ]),
      backgroundColor: Colors.transparent,
    );
  }
}
