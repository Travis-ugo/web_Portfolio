import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Explore/freeze.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Views extends StatefulWidget {
  @override
  _ViewsState createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      keepPage: true,
      initialPage: 0,
    );
    return Cold();
  }
}
