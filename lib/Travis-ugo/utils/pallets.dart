import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Mobi extends StatefulWidget {
  @override
  _MobiState createState() => _MobiState();
}

bool isLight = true;

class _MobiState extends State<Mobi> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Changer extends StatefulWidget {
  @override
  _ChangerState createState() => _ChangerState();
}

bool isColored = true;

Icon sun = Icon(FeatherIcons.sun, size: 13, color: Colors.white);
Icon moon = Icon(FeatherIcons.moon, size: 13);

Icon mSun = Icon(FeatherIcons.sun, size: 15, color: Colors.white);
Icon mMoon = Icon(FeatherIcons.moon, size: 15, color: Colors.black);

class _ChangerState extends State<Changer> {
  void toggleColor() {
    setState(() {
      if (isColored) {
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      icon: (isColored ? moon : sun),
      label: Text('Love'),
      onPressed: () {
        setState(() {
          isLight = isLight == true ? false : true;
        });
      },
    );
  }
}
