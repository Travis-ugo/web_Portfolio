import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import '../utils/widgets.dart';

class RoundMan extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;
  final double percent;

  const RoundMan(
      {Key key, this.title, this.subtitle, this.color, this.icon, this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 12000,
              curve: Curves.bounceIn,
              percent: 0.8,
              radius: 60.0,
              lineWidth: 5.0,
              progressColor: color.withOpacity(0.8),
              center: Container(
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
// new CircularPercentIndicator(
//                   radius: 60.0,
//                   lineWidth: 5.0,
//                   percent: 1.0,
//                   center: new Text("100%"),
//                   progressColor: Colors.green,
//                 )
