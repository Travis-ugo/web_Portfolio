import 'package:flutter/material.dart';
import '../utils/widgets.dart';

class RoundMan extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;
  final double cloud;
  final double x;
  final double y;
  const RoundMan({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.color,
    @required this.icon,
    @required this.cloud,
    @required this.x,
    @required this.y,
  }) : super(key: key);

  @override
  _RoundManState createState() => _RoundManState();
}

class _RoundManState extends State<RoundMan> {
  void quickStart() {
    Future.delayed(Duration(milliseconds: 550), () {
      setState(() {
        _height = widget.cloud;
        Future.delayed(Duration(milliseconds: 750), () {
          setState(() {
            _fonts = 12;
            title = widget.title;
            subtitle = widget.subtitle;
            x = widget.x;
            y = widget.y;
          });
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
    quickStart();
  }

  double _height = 20;
  double _fonts = 0;
  String title = '';
  String subtitle = '';
  double x = 0;
  double y = 0;
  AlignmentGeometry align = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return new AnimatedAlign(
      curve: Curves.bounceInOut,
      duration: Duration(milliseconds: 250),
      alignment: Alignment(x, y),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            // child: CircularPercentIndicator(
            //   animation: true,
            //   animationDuration: 12000,
            //   curve: Curves.bounceOut,
            //   percent: widget.percent,
            //   radius: _heigh + 5,
            //   lineWidth: 5.0,
            //   progressColor: widget.color.withOpacity(0.8),
            //   center:
            AnimatedContainer(
              curve: Curves.bounceInOut,
              height: _height,
              width: _height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: widget.color,
              ),
              duration: Duration(seconds: 2),
              child: Icon(
                widget.icon,
                size: _fonts + 15,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: _fonts,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: _fonts,
                  fontWeight: FontWeight.w400,
                  color: Colors.black26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
