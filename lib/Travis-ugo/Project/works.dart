// import 'package:flutter/material.dart';

// class Work extends StatefulWidget {
//   final String mage;
//   const Work({Key key, this.mage}) : super(key: key);
//   @override
//   _WorkState createState() => _WorkState();
// }

// class _WorkState extends State<Work> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: TweenAnimationBuilder(
//         tween: Tween<double>(
//           begin: 0,
//           end: 1,
//         ),
//         child: Text(
//           'Honcho',
//           style: TextStyle(
//               fontSize: 42, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         duration: Duration(milliseconds: 500),
//         builder: (BuildContext context, double val, Widget child) {
//           return Opacity(
//             opacity: val,
//             child: Padding(padding: EdgeInsets.only(top: val * 30)),
//           );
//         },
//       ),
//     );
//   }
// }

// boeck() {
//   return Scaffold(
//     body: Hero(
//       tag: 'olelele',
//       flightShuttleBuilder: (
//         BuildContext flightContext,
//         Animation<double> animation,
//         HeroFlightDirection flightDirection,
//         fromHeroContext,
//         toHeroContext,
//       ) =>
//           Work(),
//       child: Text('Ola'),
//     ),
//   );
// }
