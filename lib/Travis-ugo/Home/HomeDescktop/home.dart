import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF6),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 85),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              title: MenuDesktop(),
              backgroundColor: Colors.black54,
              elevation: 0.0,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Body(),
          ],
        ),
      ),
    );
  }
}
