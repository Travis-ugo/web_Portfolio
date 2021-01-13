import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Skills',
              style: GoogleFonts.varelaRound(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 15),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Stack(
                children: [
                  RoundMan(
                    color: Colors.blueAccent,
                    title: 'UI?UX design',
                    subtitle:
                        '''Beautiful user friendly\napplications for moble and web\napplications''',
                    icon: MdiIcons.pictureInPictureBottomRight,
                    cloud: 170,
                    percent: 0.8,
                    animatedTop: 15,
                    animatedBottom: 0,
                    animatedLeft: 30,
                    animatedRight: 0,
                  ),
                  RoundMan(
                    cloud: 50,
                    percent: 0.8,
                    color: Colors.grey,
                    title: "Mobile Dev",
                    subtitle:
                        '''develope\ncross platform native apps\nfor easy user experiences''',
                    icon: Icons.phone_android,
                    animatedTop: 18,
                    animatedBottom: 0,
                    animatedLeft: 0,
                    animatedRight: 60,
                  ),
                  RoundMan(
                    cloud: 80,
                    percent: 0.75,
                    color: Colors.lightBlue,
                    title: 'Web Dev',
                    subtitle:
                        'Responsive and fast web\napppications for user expenrince',
                    icon: MdiIcons.laptopChromebook,
                    animatedTop: 0,
                    animatedBottom: 30,
                    animatedLeft: 30,
                    animatedRight: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
