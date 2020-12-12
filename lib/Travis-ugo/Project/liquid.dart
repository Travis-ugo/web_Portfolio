import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class Liquid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Plasma(
      particles: 5,
      foregroundColor: Color(0x6642a5f5),
      backgroundColor: Color(0xff386fc5),
      size: 1.00,
      speed: 10.00,
      offset: 6.11,
      blendMode: BlendMode.colorDodge,
      child: Container(), // your UI here
    );
  }
}
