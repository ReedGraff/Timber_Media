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
  int _selectedIndex = 0;

  var page_routes = ["chat", "help"];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.pushNamed(context, page_routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Timber Chat App",
          style: TextStyle(color: darkRed),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.bottomCenter, // align the row
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const <Widget>[Flexible(child: TextField())],
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: veryDarkRed,
        onTap: _onItemTapped,
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
    );
  }
}
