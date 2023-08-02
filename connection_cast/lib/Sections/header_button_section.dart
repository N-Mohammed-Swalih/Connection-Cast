import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
   const HeaderButtonSection({super.key, 
 required this.buttonone,
   required this.buttontwo,
  required this.buttonthree,});
  
  final Widget buttonone;
   final Widget buttontwo;
    final Widget buttonthree;


  Widget divider({
    required double? thickness,
    required Color? color,
  }) {
    return VerticalDivider(
      thickness: thickness,
      color: color,
    );
  }

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
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          buttonone,
          buttontwo,
         buttonthree,
        ]));
  }
}
