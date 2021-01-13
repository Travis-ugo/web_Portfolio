import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DesktopFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'I am always\nInstrested about\ncool stuff.\nYou have a project\ni am available?',
              ),
            ),
            Text(''),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(MdiIcons.twitter),
                    color: Colors.blue[500],
                    iconSize: 18,
                    onPressed: () async {
                      await launch(
                          Uri.parse('https://twitter.com/Travis86622225')
                              .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.github),
                    color: Colors.blue[500],
                    iconSize: 18,
                    onPressed: () async {
                      await launch(Uri.parse('https://github.com/Travis-ugo')
                          .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.linkedin),
                    color: Colors.blue[400],
                    iconSize: 18,
                    onPressed: () async {
                      await launch(Uri.parse(
                              'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                          .toString());
                    },
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
