import 'dart:math';

import 'package:flutter/material.dart';

class Tablee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          children: [
            TableRow(children: [
              Fill(fill: 'Home'),
              Fill(fill: 'cool'),
              Fill(fill: 'kohl'),
              Fill(fill: 'Mole'),
            ]),
            TableRow(children: [
              Fill(fill: 'Home'),
              Fill(fill: 'cool'),
              Fill(fill: 'kohl'),
              Fill(fill: 'Mole'),
            ]),
            TableRow(children: [
              Fill(fill: 'Home'),
              Fill(fill: 'cool'),
              Fill(fill: 'kohl'),
              Fill(fill: 'Mole'),
            ]),
            TableRow(children: [
              Fill(fill: 'Home'),
              Fill(fill: 'cool'),
              Fill(fill: 'kohl'),
              Fill(fill: 'Mole'),
            ]),
          ],
        ),
      ),
    );
  }
}

class Fill extends StatefulWidget {
  final String fill;
  Fill({Key key, this.fill}) : super(key: key);

  @override
  _FillState createState() => _FillState();
}

class _FillState extends State<Fill> {
  //final random = Random();
  double _height = Random().nextInt(250).toDouble();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _height = Random().nextInt(250).toDouble();
          });
        },
        child: AnimatedPositioned(
          left: _height,
          right: _height,
          top: _height,
          bottom: _height,
          duration: Duration(milliseconds: 300),
          child: AnimatedContainer(
            child: Text(widget.fill),
            color: Color.fromRGBO(
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
              1,
            ),
            height: _height,
            width: _height,
            duration: Duration(milliseconds: 300),
          ),
        ),
      ),
    );
  }
}
