import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/widgets.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 200),
        FlatButton(
            onPressed: () {},
            child: Text(
              'PORTFOLIO',
              style: text,
            )),
        SizedBox(width: 30),
        FlatButton(
            onPressed: () {},
            child: Text(
              'RESUME',
              style: text,
            )),
        SizedBox(width: 30),
        FlatButton(
            onPressed: () {},
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
        SizedBox(width: 450),
        Text(
          'Travis-Ugo',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
