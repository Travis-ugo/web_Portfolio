import 'package:flutter/material.dart';

class Lines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: CurvePainter(),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.stroke;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// class CurvePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = Colors.green[800];
//     paint.style = PaintingStyle.fill; // Change this to fill

//     var path = Path();

//     path.moveTo(0, size.height * 0.25);
//     path.quadraticBezierTo(
//         size.width / 2, size.height / 2, size.width, size.height * 0.25);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class CurvePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = Colors.green[800];
//     paint.style = PaintingStyle.stroke;
//     paint.strokeWidth = 2.0;

//     var path = Path();

//     path.lineTo(size.width, size.height);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
