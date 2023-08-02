import 'package:flutter/material.dart';

Widget headerbutton({
    required String buttonText,
    required IconData buttonicon,
    required void Function() buttonAction,
    required Color color,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonicon,
        color: color,
      ),
      label: Text(buttonText,
      style:TextStyle(
        color: Colors.black
      ) ,),
    );
  }
