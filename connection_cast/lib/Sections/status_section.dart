import 'package:connection_cast/Sections/avatar.dart';
import 'package:connection_cast/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: dqimage,
        displayStatus: true,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.photo_library, color: Colors.green),
      ),
    );
  }
}
