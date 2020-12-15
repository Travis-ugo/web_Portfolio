import 'dart:ui';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildBuyTicketButton(),
      ),
    );
  }

  _buildBuyTicketButton() {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.all(8),
      child: BuyButton(),
    );
  }
}

class BuyButton extends StatefulWidget {
  @override
  _BuyButtonState createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> with TickerProviderStateMixin {
  String _buttonText = 'BUY TICKET';

  AnimationController _controller;
  Animation _roundnessAnimation;
  Animation _widthAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1500,
      ),
    )..addListener(() {
        setState(() {});
      });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Screen2();
          }),
        );
      }
    });

    _roundnessAnimation = Tween(begin: 10.0, end: 25.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    ));

    _widthAnimation = Tween(begin: 250.0, end: 40.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _buttonText = '';
            //Starts animation
            _controller.forward();
          });
        },
        child: Hero(
          tag: 'blackBox',
          flightShuttleBuilder: (
            BuildContext flightContext,
            Animation<double> animation,
            HeroFlightDirection flightDirection,
            BuildContext fromHeroContext,
            BuildContext toHeroContext,
          ) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            );
          },
          child: Container(
            width: _widthAnimation.value,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(_roundnessAnimation.value),
            ),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              _buttonText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Hero(
        tag: 'blackBox',
        createRectTween: _createRectTween,
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'SCREEN 2',
                style: TextStyle(color: Colors.white),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Black blue',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static RectTween _createRectTween(Rect begin, Rect end) {
    return CircularRectTween(begin: begin, end: end);
  }
}

class CircularRectTween extends RectTween {
  CircularRectTween({Rect begin, Rect end}) : super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    final double width = lerpDouble(begin.width, end.width, t);
    double startWidthCenter = begin.left + (begin.width / 2);
    double startHeightCenter = begin.top + (begin.height / 2);

    return Rect.fromCircle(
        center: Offset(startWidthCenter, startHeightCenter),
        radius: width * 1.7);
  }
}
