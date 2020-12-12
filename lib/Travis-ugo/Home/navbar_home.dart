import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //SizedBox(width: 200),
          FlatButton(
              onPressed: () async {
                await launch(Uri.parse('').toString());
              },
              child: Text(
                'PORTFOLIO',
                style: text,
              )),
          SizedBox(width: 30),
          FlatButton(
              onPressed: () async {
                await launch(Uri.parse('').toString());
              },
              child: Text(
                'RESUME',
                style: text,
              )),
          SizedBox(width: 30),
          FlatButton(
              onPressed: () async {
                await launch(
                    Uri.parse('https://twitter.com/Travis86622225').toString());
              },
              child: Text(
                'CONTACT',
                style: text,
              )),
          SizedBox(width: 30),
          IconButton(
            icon: Icon(MdiIcons.moonWaxingCrescent),
            color: Colors.black54,
            iconSize: 17,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
