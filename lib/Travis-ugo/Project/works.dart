import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  final String mage;
  const Work({Key key, this.mage}) : super(key: key);
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  double _height = 200;
  double _width = 700;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Container(
        child: Stack(
          children: [
            InkWell(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: _height,
                width: _width,
                color: Colors.black,
              ),
              onTap: () {
                setState(() {});
              },
            ),
            Positioned(
              top: 3.0,
              right: 3.0,
              child: Text(
                'My Work Ethics',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
