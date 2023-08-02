import 'package:connection_cast/Sections/avatar.dart';
import 'package:connection_cast/Sections/header_button_section.dart';
import 'package:connection_cast/Widgets/blue_tick.dart';
import 'package:connection_cast/Widgets/header_button.dart';
import 'package:connection_cast/assets.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.Publishtime,
    required this.postcaption,
    required this.postimage,
    this.showbluetick = false,
  });

  final String avatar;
  final String name;
  final String Publishtime;
  final String postcaption;
  final String postimage;
  final bool showbluetick;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
                height: 1,
                color: Colors.grey[300],
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
          HeaderButtonSection(
            buttonone: headerbutton(
                buttonText: "Like",
                buttonicon: Icons.thumb_up_off_alt_outlined,
                buttonAction: () {},
                color: Colors.grey),
            buttontwo: headerbutton(
                buttonText: "Comment",
                buttonicon: Icons.message_outlined,
                buttonAction: () {},
                color: Colors.grey),
            buttonthree: headerbutton(
                buttonText: "Share",
                buttonicon: Icons.share_outlined,
                buttonAction: () {},
                color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget displaytext({required String label}) {
    return Text(
      label == null ? " " : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget titleSection() {
    return Container(
        padding: EdgeInsets.all(20),
        child: Text(
          postcaption == null ? "" : postcaption,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ));
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(postimage),
    );
  }

  Widget footerSection() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 8,
              ),
            ),
            displaytext(label: "10K"),
          ]),
          Container(
            child: Row(
              children: [
                displaytext(label: "5K"),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: "comments"),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: "1K"),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: "shares"),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(children: [
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        showbluetick ? BlueTick() : SizedBox(),
      ]),
      subtitle: Row(
        children: [
          Text(Publishtime == null ? " " : Publishtime),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        color: Colors.grey[700],
        onPressed: () {},
      ),
    );
  }
}
