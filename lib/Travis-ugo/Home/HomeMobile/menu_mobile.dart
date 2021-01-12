import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _text = GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: MediaQuery.of(context).size.width / 67,
        fontWeight: FontWeight.w500,
        color: Color(0xFFF4FAFD),
        letterSpacing: 0.5,
      ),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
            onPressed: () async {
              await launch(Uri.parse('').toString());
            },
            child: Text(
              '  PORTFOLIO',
              style: _text,
            )),
        SizedBox(width: MediaQuery.of(context).size.width / 35),
        FlatButton(
            onPressed: () async {
              await launch(Uri.parse('').toString());
            },
            child: Text(
              'RESUME',
              style: _text,
            )),
        //SizedBox(width: 30),
        SizedBox(width: MediaQuery.of(context).size.width / 35),
        FlatButton(
            onPressed: () async {
              await launch(
                  Uri.parse('https://twitter.com/Travis86622225').toString());
            },
            child: Text(
              'CONTACT',
              style: _text,
            )),
        //SizedBox(width: 30),
        // SizedBox(width: MediaQuery.of(context).size.width / 20),
        // IconButton(
        //   icon: Icon(MdiIcons.moonWaxingCrescent),
        //   color: Colors.black54,
        //   iconSize: 17,
        //   onPressed: () {},
        // ),
      ],
    );
  }
}
