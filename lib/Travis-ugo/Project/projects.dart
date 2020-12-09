import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/widgets.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Column(
        children: [
          Center(
            child: Text('goat'),
          ),
          Hover(),
        ],
      ),
    );
  }
}
