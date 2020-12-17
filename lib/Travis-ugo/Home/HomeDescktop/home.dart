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
      backgroundColor: Pallets.color,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 85),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              title: MenuDesktop(),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            SizedBox(height: 25),
            Body(),
          ],
        ),
      ),
    );
  }
}
