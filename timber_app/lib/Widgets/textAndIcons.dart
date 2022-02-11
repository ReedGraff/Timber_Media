// This Screen is for the onboarding process interface
// Flutter
import 'package:flutter/material.dart';

// External

// Local
import 'package:timber_app/Configs/constants/constants.dart';

class textAndIcons extends StatelessWidget {
  final String header;
  final List listOfStrings;
  final Color Textcolor;

  const textAndIcons(
      {Key? key, required this.header, required this.listOfStrings, required this.Textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text(
                header,
                style: const TextStyle(
                    fontFamily: "ABeeZee", fontSize: 20, color: textColor),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: listIconBuilder()),
      ],
    );
  }

  List<Widget> listIconBuilder() {
    List<Widget> listOfIcons = [];

    for (var element in listOfStrings) {
      listOfIcons.add(Container(
        child: Text(
          element,
          style: const TextStyle(fontSize: 15, color: textColor),
        ),
        padding: const EdgeInsets.all(2.5),
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Textcolor,
        ),
      ));
    }
    return listOfIcons;
  }
}
