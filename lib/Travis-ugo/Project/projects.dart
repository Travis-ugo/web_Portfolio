import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Project/works.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Work(),
              Work(),
            ],
          ),
        ),
      ),
    );
  }
}
