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
                    animatedTop: 0,
                    animatedBottom: 0,
                    animatedLeft: 0,
                    animatedRight: 0,
                  ),
                  RoundMan(
                    cloud: 50,
                    percent: 0.8,
                    color: Colors.grey,
                    title: "Mobile Dev",
                    subtitle:
                        '''Engage in developing\ncross platform fast and beautiful\nnative apps for easy user\nexperiences''',
                    icon: Icons.phone_android,
                  ),
                  RoundMan(
                    cloud: 80,
                    percent: 0.75,
                    color: Colors.lightBlue,
                    title: 'Web Dev',
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
                    cloud: 40,
                    percent: 0.5,
                    color: Colors.yellow[900],
                    title: "Cloud Store",
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
// Plasma(
//   particles: 6,
//   foregroundColor: Color(0xADFFFFFF),
//   backgroundColor: Color(0xff386fc5),
//   size: 1.00,
//   speed: 10.00,
//   offset: 6.11,
//   blendMode: BlendMode.colorDodge,
//   child: Container(
//     width: MediaQuery.of(context).size.width,
//     height: MediaQuery.of(context).size.height,
//   ),
// ),
