import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../utils/widgets.dart';

class RoundMan extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;
  final double percent;
  final double cloud;
  final double animatedTop;
  final double animatedBottom;
  final double animatedRight;
  final double animatedLeft;
  const RoundMan({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.color,
    @required this.icon,
    @required this.percent,
    @required this.cloud,
    this.animatedTop,
    this.animatedBottom,
    this.animatedRight,
    this.animatedLeft,
  }) : super(key: key);

  @override
  _RoundManState createState() => _RoundManState();
}

class _RoundManState extends State<RoundMan> {
  void loco() {
    Future.delayed(Duration(milliseconds: 250), () {
      setState(() {
        _heigh = widget.cloud;
        top = widget.animatedTop;
        bottom = widget.animatedBottom;
        right = widget.animatedRight;
        left = widget.animatedLeft;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loco();
  }

  double top = 0;
  double bottom = 0;
  double right = 0;
  double left = 0;
  double _heigh = 40;
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
              curve: Curves.bounceOut,
              percent: widget.percent,
              radius: _heigh + 5,
              lineWidth: 5.0,
              progressColor: widget.color.withOpacity(0.8),
              center: InkWell(
                child: AnimatedPositioned(
                  curve: Curves.bounceInOut,
                  top: top,
                  bottom: bottom,
                  left: left,
                  right: right,
                  duration: Duration(milliseconds: 350),
                  child: AnimatedContainer(
                    curve: Curves.bounceInOut,
                    height: _heigh,
                    width: _heigh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      color: widget.color,
                    ),
                    duration: Duration(milliseconds: 350),
                    child: Icon(
                      widget.icon,
                      size: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        Text(
          widget.subtitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
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
