import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class MobilePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [],
    );
  }
}

class DesktopPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [],
    );
  }
}

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

Icon moon = Icon(MdiIcons.moonFirstQuarter);
Icon sun = Icon(Icons.lightbulb);

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

//icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
// void _toggleFavorite() {
//   setState(() {
//     if (_isFavorited) {
//       _favoriteCount -= 1;
//       _isFavorited = false;
//     } else {
//       _favoriteCount += 1;
//       _isFavorited = true;
//     }
//   });
// }
// bool _active = false;

// void _handleTap() {
//   setState(() {
//     _active = !_active;
//   });
// }
