import 'package:flutter/material.dart';
import '../widgets.dart';

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
