import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar(
      {super.key, required this.displayImage, required this.displayStatus, this.displayBorder = false});

  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    if (displayStatus == true) {
      statusIndicator = Positioned(
        bottom: 0,
        right: 1.0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }
    return  Container(
      decoration: BoxDecoration(
      border: displayBorder ? Border.all(
        color: Colors.blueAccent,
        width: 3,
        )
        : Border(),
      shape: BoxShape.circle
      ),
      margin: EdgeInsets.all(5),
      child :
      ClipRRect(
        child: Image.asset(
          displayImage,
          width: 40,
          height: 40,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
