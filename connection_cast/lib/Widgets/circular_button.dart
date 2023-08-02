import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconcolor;
  final Color color;

  CircularButton(
      {required this.buttonIcon,
      required this.buttonAction,
      this.color = Colors.grey,
      this.iconcolor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          buttonAction;
        },
        icon: Icon(
          buttonIcon,
          color: iconcolor,
          size: 23,
        ),
      ),
    );
  }
}
