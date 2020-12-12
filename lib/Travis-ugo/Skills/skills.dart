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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Skills',
          ),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundMan(
                  color: Colors.blueAccent,
                  title: 'UI?UX design',
                  subtitle:
                      '''Beautiful user friendly\napplications for moble and web\napplications''',
                  icon: MdiIcons.pictureInPictureBottomRight,
                ),
                RoundMan(
                  percent: 0.8,
                  color: Colors.grey,
                  title: "Flutter",
                  subtitle:
                      '''Engage in developing\ncross platform fast and beautiful\nnative apps for easy user\nexperiences''',
                  icon: Icons.phone_android,
                ),
                RoundMan(
                  percent: 0.75,
                  color: Colors.lightBlue,
                  title: 'Dart',
                  subtitle:
                      'Responsive and fast web\napppications for user expenrince',
                  icon: MdiIcons.laptopChromebook,
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundMan(
                  percent: 0.7,
                  color: Colors.green[600],
                  title: 'HTML',
                  subtitle:
                      '''Beautiful user friendly\napplications for moble and web\napplications''',
                  icon: MdiIcons.pictureInPictureBottomRight,
                ),
                RoundMan(
                  percent: 0.5,
                  color: Colors.yellow[900],
                  title: "Java",
                  subtitle:
                      '''Engage in developing\ncross platform fast and beautiful\nnative apps for easy user\nexperiences''',
                  icon: Icons.phone_android,
                ),
                RoundMan(
                  percent: 0.6,
                  color: Colors.blue[600],
                  title: 'Python',
                  subtitle:
                      'Responsive and fast web\napppications for user expenrince',
                  icon: MdiIcons.laptopChromebook,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
