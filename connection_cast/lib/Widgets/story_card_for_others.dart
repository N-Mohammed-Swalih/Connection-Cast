import 'package:flutter/material.dart';

class StoryCard2 extends StatelessWidget {
  const StoryCard2({super.key, required this.labelText, required this.story, required this.avatar, this.createStoryStatus = false});
  
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE0E0E0),
        width: 1,),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 100,
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            child: Positioned(
                top: 0, child: Image(image: AssetImage(story))),
          ),
            Positioned(
            left: 27.5,
            bottom: 12.5,
            child: Text(
              labelText != null? labelText : "N/A",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
            ),
          ),

        ],
      ),
    );
  }
}