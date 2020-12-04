import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:travis_ugo/Home/home.dart';

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55.0,
                  width: 55.0,
                  child: Center(
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: IconButton(
                        icon: new Icon(
                          Icons.audiotrack,
                          size: 20.0,
                        ),
                        color: Color(0xFF162A49),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55.0,
                  width: 55.0,
                  child: Center(
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: IconButton(
                        icon: new Icon(
                          Icons.audiotrack,
                          size: 20.0,
                        ),
                        color: Color(0xFF162A49),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 170.0,
                  width: 170.0,
                  color: Colors.green,
                  child: Center(
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: IconButton(
                        icon: new Icon(
                          Icons.audiotrack,
                          size: 20.0,
                        ),
                        color: Color(0xFF162A49),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
              ],
            ),
          ],
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
                style: TextStyle(
                  color: Colors.grey[600],
                  fontFamily: 'ProximaSoft-Light.ttf',
                  fontSize: 12,
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
                fontFamily: 'Montserrat',
                fontSize: 16,
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                color: Colors.grey[600],
                fontFamily: 'ProximaSoft-Light.ttf',
                fontSize: 16,
              ),
            ),
          ],
        ),
        //Spacer(),
        SizedBox(
          height: 2,
        ),
        LinearPercentIndicator(
          width: 200,
          animation: true,
          lineHeight: 7.0,
          animationDuration: 3500,
          percent: person,
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: progressColor,
        ),
      ],
    );
  }
}
