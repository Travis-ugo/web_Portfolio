import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  final String mage;
  const Work({Key key, this.mage}) : super(key: key);
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  final double _height = 200;
  final double _width = 400;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: _height,
          width: _width,
          child: Image.asset('assets/black..jpg'),
        ),
        Text('My Work Ethics'),
      ],
    );
  }
}
