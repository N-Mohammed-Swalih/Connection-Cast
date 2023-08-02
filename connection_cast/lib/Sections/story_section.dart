import 'package:connection_cast/Widgets/story_card.dart';
import 'package:connection_cast/assets.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Create Story",
            story: dqimage,
            avatar: dqimage,
            createStoryStatus: true,
            imageheight: 130,
            imgbottomleft: Radius.circular(0),
            imgbottomright: Radius.circular(0),
            textcolor : Colors.black,
          ),
          StoryCard(
            labelText: "Aishwarya",
            story: aishustroy,
            avatar: aishu,
            createStoryStatus: false,
          ),
          StoryCard(
            labelText: "Vijay\nSethupathi",
            story: sethupathistory,
            avatar: sethupathi,
            createStoryStatus: false,
          ),
          StoryCard(
            labelText: "Mohanlal",
            story: mohanlalstroy,
            avatar: mohanlal,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Mammotty",
            story: mammottystory,
            avatar: mammotty,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Prithviraj\nSukumaran",
            story: prithvistroy,
            avatar: prithvi,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Soubin",
            story: soubinstory,
            avatar: soubin,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Indrans",
            story: indranstory,
            avatar: indrans,
            displayBorder: true,
          )
        ],
      ),
    );
  }
}
