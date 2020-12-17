import 'package:flutter/material.dart';

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
      duration: Duration(milliseconds: 250),
    );
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  // void _onDragStart(DragStartDetails details) {
  //   bool isDragOpenFronLeft = animationController.isDismissed &&
  //       details.globalPosition.dx > minDragStartEdge;
  //   bool isDrageCloseFromRight = animationController.isCompleted &&
  //       details.globalPosition.dx > maxDragStartEdge;
  //   _canBeDragged = isDragOpenFronLeft || isDrageCloseFromRight;
  // }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double maxSlide = 225.0;
    var myDrawer = Container(color: Colors.blue);
    var myChild = Container(color: Colors.yellow);

    return GestureDetector(
      onTap: toggle,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          double slide = maxSlide * animationController.value;
          double scale = 1 - (animationController.value * 0.3);
          return Stack(children: [
            myDrawer,
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.centerLeft,
              child: myChild,
            ),
          ]);
        },
      ),
    );
  }
}
