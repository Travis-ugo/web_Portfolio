import 'package:flutter/material.dart';

import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Cold extends StatefulWidget {
  @override
  _ColdState createState() => _ColdState();
}

class _ColdState extends State<Cold> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }
  // void _onDragStart(DragStartDetails details) {
  //   bool isDragOpenFronLeft = animationController.isDismissed &&
  //       details.globalPosition.dx > minDragStartEdge;
  //   bool isDrageCloseFromRight = animationController.isCompleted &&
  //       details.globalPosition.dx > maxDragStartEdge;
  //   _canBeDragged = isDragOpenFronLeft || isDrageCloseFromRight;
  // }

  void toggle() {
    animationController.isDismissed
        ? animationController.forward()
        : animationController.reverse();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  var extraPage = Container(
    color: Colors.greenAccent,
    height: 100,
    width: 100,
  );
  var topPage = Container(
    color: Colors.blue,
    height: 100,
    width: 100,
  );
  var bottomPage = Container(
    color: Colors.yellow,
  );
  final double maxSlide = 340.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          double slide = maxSlide * animationController.value;
          double scale = 1 - (animationController.value);
          return Stack(children: [
            bottomPage,
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.bottomRight,
              child: topPage,
            ),
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.bottomLeft,
              child: extraPage,
            ),
          ]);
        },
      ),
    );
  }
}
