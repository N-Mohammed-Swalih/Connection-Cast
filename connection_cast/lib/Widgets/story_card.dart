import 'package:connection_cast/Widgets/circular_button.dart';
import 'package:flutter/material.dart';

import '../Sections/avatar.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key,
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder = false,
    this.imageheight = 200,
    this.imgbottomleft = const Radius.circular(15),
    this.imgbottomright = const Radius.circular(15),
    this.textcolor = Colors.white,
  });

  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;
  final double imageheight;
  final Radius imgbottomleft;
  final Radius imgbottomright;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE0E0E0),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 100,
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: imgbottomleft,
                bottomRight: imgbottomright,
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)),
            child: Positioned(
                bottom: 40,
                top: 0,
                child: Image(
                  height: imageheight,
                  width: 100,
                  image: AssetImage(story),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            bottom: 25,
            left: 22,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    buttonAction: () {},
                    iconcolor: Colors.white,
                    color: Colors.blue,
                  )
                : Positioned(
                    child: Avatar(
                      displayImage: avatar,
                      displayStatus: false,
                      displayBorder: displayBorder,
                    ),
                  ),
          ),
          Positioned(
            bottom: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              //padding: EdgeInsets.only(left : 10,right: 10,bottom: 10),
              child: Text(
                labelText != null ? labelText : "N/A",
                style: TextStyle(
                    color: textcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
