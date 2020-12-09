import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/widgets.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
            onPressed: () {},
            child: Text(
              'PORTFOLIO',
              style: text,
            )),
        SizedBox(width: 60),
        FlatButton(
            onPressed: () {},
            child: Text(
              'RESUME',
              style: text,
            )),
        SizedBox(width: 60),
        FlatButton(
            onPressed: () {},
            child: Text(
              'CONTACT',
              style: text,
            )),
        SizedBox(width: 60),
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
