import 'package:flutter/material.dart';
import 'package:travis_ugo/Home/exports.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.white,
                  height: 200,
                  width: 540,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 250,
                  ),
                  SizedBox(width: 40),
                  Container(
                    color: Colors.white,
                    height: 200,
                    width: 250,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
