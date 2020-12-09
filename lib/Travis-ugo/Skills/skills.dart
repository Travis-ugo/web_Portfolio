import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/widgets.dart';

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
                  color: Colors.grey,
                  title: "Mobile application",
                  subtitle:
                      '''Engage in developing\ncross platform fast and beautiful\nnative apps for easy user\nexperiences''',
                  icon: Icons.phone_android,
                ),
                RoundMan(
                  color: Colors.redAccent,
                  title: 'Descktop Apps',
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
                  color: Colors.green[600],
                  title: 'UI/UX design',
                  subtitle:
                      '''Beautiful user friendly\napplications for moble and web\napplications''',
                  icon: MdiIcons.pictureInPictureBottomRight,
                ),
                RoundMan(
                  color: Colors.purple[700],
                  title: "Mobile application",
                  subtitle:
                      '''Engage in developing\ncross platform fast and beautiful\nnative apps for easy user\nexperiences''',
                  icon: Icons.phone_android,
                ),
                RoundMan(
                  color: Colors.yellow[600],
                  title: 'Descktop Apps',
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
