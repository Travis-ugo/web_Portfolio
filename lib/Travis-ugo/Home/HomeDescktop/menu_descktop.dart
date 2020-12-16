import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(flex: 3),
          Text(
            'Travis-ugo',
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                letterSpacing: 0.5,
              ),
            ),
          ),
          Spacer(flex: 4),
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
          Spacer(flex: 40),
        ],
      ),
    );
  }
}
