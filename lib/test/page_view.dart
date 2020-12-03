import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import '../Footer/footer.dart';
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
        Foter(),
      ],
    );
  }
}

class Close extends StatefulWidget {
  @override
  _CloseState createState() => _CloseState();
}

class _CloseState extends State<Close> {
  @override
  Widget build(BuildContext context) {
    return FooterView(
      footer: Footer(
        child: Column(
          children: [
            Home(),
            Details(),
            Services(),
          ],
        ),
      ),
      children: [],
    );
  }
}
