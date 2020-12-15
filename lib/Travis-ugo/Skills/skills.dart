import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
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
        Plasma(
          particles: 6,
          foregroundColor: Color(0xADFFFFFF),
          backgroundColor: Color(0xff386fc5),
          size: 1.00,
          speed: 10.00,
          offset: 6.11,
          blendMode: BlendMode.colorDodge,
          child: Container(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Skills',
              style: GoogleFonts.varelaRound(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundMan(
                    color: Colors.blueAccent,
                    title: 'UI?UX design',
                    subtitle:
                        '''Beautiful user friendly\napplications for moble and web\napplications''',
                    icon: MdiIcons.pictureInPictureBottomRight,
                    cloud: 170,
                    percent: 0.8,
                  ),
                  RoundMan(
                    cloud: 50,
                    percent: 0.8,
                    color: Colors.grey,
                    title: "Flutter",
                    subtitle:
                        '''Engage in developing\ncross platform fast and beautiful\nnative apps for easy user\nexperiences''',
                    icon: Icons.phone_android,
                  ),
                  RoundMan(
                    cloud: 80,
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
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundMan(
                    cloud: 70,
                    percent: 0.7,
                    color: Colors.green[600],
                    title: 'HTML',
                    subtitle:
                        '''Beautiful user friendly\napplications for moble and web\napplications''',
                    icon: MdiIcons.pictureInPictureBottomRight,
                  ),
                  RoundMan(
                    cloud: 40,
                    percent: 0.5,
                    color: Colors.yellow[900],
                    title: "Java",
                    subtitle:
                        '''Engage in developing\ncross platform fast and beautiful\nnative apps for easy user\nexperiences''',
                    icon: Icons.phone_android,
                  ),
                  RoundMan(
                    cloud: 60,
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
      ]),
    );
  }
}
