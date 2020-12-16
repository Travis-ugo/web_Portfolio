import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
            onPressed: () async {
              await launch(Uri.parse('').toString());
            },
            child: Text(
              'PORTFOLIO',
              style: text,
            )),
        SizedBox(width: 20),
        FlatButton(
            onPressed: () async {
              await launch(Uri.parse('').toString());
            },
            child: Text(
              'RESUME',
              style: text,
            )),
        SizedBox(width: 20),
        FlatButton(
            onPressed: () async {
              await launch(
                  Uri.parse('https://twitter.com/Travis86622225').toString());
            },
            child: Text(
              'CONTACT',
              style: text,
            )),
        SizedBox(width: 20),
        IconButton(
          icon: Icon(MdiIcons.moonWaxingCrescent),
          color: Colors.black54,
          iconSize: 17,
          onPressed: () {},
        ),
      ],
    );
  }
}
