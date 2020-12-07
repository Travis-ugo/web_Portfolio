import 'package:flutter/material.dart';
import 'package:travis_ugo/Home/exports.dart';

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 200, height: 100),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/black..jpg'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: Skills(),
          ),
        ],
      ),
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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Skills'),
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
          //SizedBox(height: 80),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Slid('Flutter', Colors.cyanAccent, 60.0, 0.6),
          //         Slid('Dart', Colors.black, 80.0, 0.8),
          //         Slid('C', Colors.brown, 40.0, 0.4),
          //         Slid('Python', Colors.blue, 70.0, 0.7),
          //       ],
          //     ),
          //     SizedBox(width: 80),
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Slid('HTLM', Colors.redAccent, 60.0, 0.6),
          //         Slid('CSS', Colors.greenAccent, 80.0, 0.8),
          //         Slid('Java', Colors.yellowAccent, 40.0, 0.4),
          //         Slid('JavaScript', Colors.brown[400], 70.0, 0.7),
          //       ],
          //     ),
          //   ],
          //),
        ],
      ),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: color,
              ),
              child: Icon(
                icon,
                size: 15.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.varelaRound(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.black26,
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
                    color: Colors.black87,
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
