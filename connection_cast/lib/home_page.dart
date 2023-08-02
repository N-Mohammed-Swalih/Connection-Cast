import 'package:connection_cast/Sections/story_section.dart';
import 'package:connection_cast/Sections/status_section.dart';
import 'package:connection_cast/Widgets/circular_button.dart';
import 'package:connection_cast/Widgets/post_card.dart';
import 'package:connection_cast/assets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "facebook",
              style: TextStyle(
                color: Color.fromARGB(255, 37, 139, 223),
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              CircularButton(
                buttonIcon: Icons.add,
                buttonAction: () => {},
                color: Color(0xFFE0E0E0),
              ),
              CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () => {},
                color: Color(0xFFE0E0E0),
              ),
              CircularButton(
                buttonIcon: Icons.message_rounded,
                buttonAction: () => {},
                color: Color(0xFFE0E0E0),
              ),
            ],
          ),
          body: ListView(
            children: [
              StatusSection(),
              Divider(
                height: 1,
                color: Colors.grey[300],
                thickness: 3,
              ),
              CardSection(),
              Divider(
                height: 1,
                color: Colors.grey[300],
                thickness: 5,
              ),
              PostCard(
                  showbluetick: true,
                  avatar: mammotty,
                  name: "Mammotty",
                  Publishtime: "5 hrs ago",
                  postcaption: "Hello Everyone",
                  postimage: mammottypost),
              Divider(
                height: 1,
                color: Colors.grey[300],
                thickness: 5,
              ),
              PostCard(
                  showbluetick: true,
                  avatar: aishu,
                  name: "Aishwarya Lekshmi",
                  Publishtime: "2 hrs ago",
                  postcaption:
                      "Attended a cute Shaadi again , this time courtesy to @ashnshrf  finding a cute better half. Congratulations you guys!!! Also Congratulations to @jyothikaroy @akillereye and myself , for successfully getting eye-rolls yet again. #iykyk",
                  postimage: aishupost),
              Divider(
                height: 1,
                color: Colors.grey[300],
                thickness: 5,
              ),
              PostCard(
                  avatar: mohanlal,
                  name: "Mohanlal",
                  Publishtime: "4 hrs ago",
                  postcaption: "Good Morning",
                  postimage: mohanlalstroy),
            ],
          ),
        ),
      ),
    );
  }
}
