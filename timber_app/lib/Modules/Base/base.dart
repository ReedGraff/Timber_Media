
// This Screen is for the base interface

// Flutter
import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';
import 'package:timber_app/Modules/Base/pages/chat.dart';
import 'package:timber_app/Modules/Base/pages/help.dart';

class base extends StatefulWidget {
  const base({Key? key}) : super(key: key);

  @override
  _baseState createState() => _baseState();
}

class _baseState extends State<base> {
  int _selectedIndex = 0;
  var appBarHandler = const ["Timber > Chat", "Timber > Help"];
  var contentHandler = const [chat(), help()];

  String appBar = "Timber > Chat";
  Widget content = const chat();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      appBar = appBarHandler[index];
      content = contentHandler[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          appBar,
          style: const TextStyle(color: darkRed),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: content,
      backgroundColor: backgroundColor,
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
