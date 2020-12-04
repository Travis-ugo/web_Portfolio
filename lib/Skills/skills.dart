import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:travis_ugo/Home/home.dart';

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CenteredView(child: Skills()),
    );
  }
}

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundMan(
              color: Colors.blueAccent,
              title: 'UI?UX design',
              subtitle: '''Beautiful user friendly\n
                  applications for moble and web\n
                  applications''',
              icon: MdiIcons.pictureInPictureBottomRight,
            ),
            RoundMan(
              color: Colors.grey,
              title: "Mobile application",
              subtitle: '''Engage in developing\n
              cross platform fast and beautiful\n
              native apps for easy user\n
              experiences''',
            ),
            RoundMan(
              color: Colors.redAccent,
              title: 'Descktop Applications',
              subtitle:
                  'Responsive and fast web apppications for user expenrince',
              icon: MdiIcons.laptopChromebook,
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundMan(
              color: Colors.greenAccent,
              title: 'UI?UX design',
              subtitle: '''Beautiful user friendly\n
                  applications for moble and web\n
                  applications''',
              icon: MdiIcons.pictureInPictureBottomRight,
            ),
            RoundMan(
              color: Colors.grey[700],
              title: "Mobile application",
              subtitle: '''Engage in developing\n
              cross platform fast and beautiful\n
              native apps for easy user\n
              experiences''',
            ),
            RoundMan(
              color: Colors.yellowAccent,
              title: 'Descktop Applications',
              subtitle:
                  'Responsive and fast web apppications for user expenrince',
              icon: MdiIcons.laptopChromebook,
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Slid('Flutter', Colors.cyanAccent, 60.0, 0.6),
                Slid('Dart', Colors.black, 80.0, 0.8),
                Slid('C', Colors.brown, 40.0, 0.4),
                Slid('Python', Colors.blue, 70.0, 0.7),
              ],
            ),
            SizedBox(width: 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Slid('HTLM', Colors.redAccent, 60.0, 0.6),
                Slid('CSS', Colors.greenAccent, 80.0, 0.8),
                Slid('Java', Colors.yellowAccent, 40.0, 0.4),
                Slid('JavaScript', Colors.brown[400], 70.0, 0.7),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class RoundMan extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;

  const RoundMan({Key key, this.title, this.subtitle, this.color, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Icon(
                icon,
                size: 10.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Text(
          subtitle,
          style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class Slid extends StatelessWidget {
  final String lavar;
  final Color progressColor;
  final double percent;
  final double person;
  const Slid(this.lavar, this.progressColor, this.percent, this.person);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              child: Text(
                lavar,
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(width: 200),
            Countup(
              begin: 0,
              end: percent,
              duration: Duration(seconds: 4),
              separator: ',',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 10,
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        LinearPercentIndicator(
          width: 250,
          animation: true,
          lineHeight: 7.0,
          animationDuration: 3500,
          percent: person,
          linearStrokeCap: LinearStrokeCap.butt,
          progressColor: progressColor,
        ),
      ],
    );
  }
}
