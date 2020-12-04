import 'package:flutter/material.dart';
import '../Home/home.dart';
import '../ToDo/Services.dart';
import '../page2/details.dart';

class Views extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 0,
    );
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      pageSnapping: false,
      children: [
        Home(),
        Details(),
        Services(),
      ],
    );
  }
}
