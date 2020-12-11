import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

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
          Center(
              child: WidgetCircularAnimator(
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              child: Icon(
                Icons.person_outline,
                color: Colors.deepOrange[200],
                size: 60,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
