import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Home/home.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: CenteredView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/black..jpg'),
            ),
            SizedBox(height: 20),
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('PORTFOLIO', style: text),
                  SizedBox(width: 50),
                  Text('RESUME', style: text),
                  SizedBox(width: 50),
                  Text('CONTACT', style: text),
                  SizedBox(width: 50),
                  IconButton(
                    icon: Icon(
                      MdiIcons.moonWaxingCrescent,
                      color: Colors.black54,
                      size: 17,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
