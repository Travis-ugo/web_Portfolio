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
      duration: Duration(milliseconds: 300),
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
    setState(() {
      _width = 25;
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  double _width = 0;
  @override
  Widget build(BuildContext context) {
    //final double maxSlide = 1340.0;
    final double maxSlide = 1340.0;
    var loco = Stack(
      children: [
        Scaffold(
          backgroundColor: color,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 80,
                right: 80,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ProjectData(
                          love: port,
                          right: 'port loco_',
                          imageurl: 'download.jpg',
                          left: '',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ProjectData(
                          love: klaws,
                          left: '_Portfolio  webApp',
                          imageurl: 'agro.jpg',
                          right: '',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ProjectData(
                          love: world,
                          right: 'world of flutter_',
                          imageurl: 'black..jpg',
                          left: '',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              color: Colors.black,
              height: MediaQuery.of(context).size.height / 2,
              width: _width,
              duration: Duration(milliseconds: 200),
            ),
            AnimatedContainer(
              color: Colors.black,
              height: MediaQuery.of(context).size.height / 2,
              width: _width,
              duration: Duration(milliseconds: 200),
            ),
          ],
        ),
      ],
    );

    return GestureDetector(
      onTap: toggle,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          double slide = maxSlide * animationController.value;
          double scale = 1 - (animationController.value * 0.3);
          return Stack(children: [
            //Projects(),
            loco,
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.centerLeft,
              child: HomeDesktop(),
            ),
          ]);
        },
      ),
    );
  }
}
