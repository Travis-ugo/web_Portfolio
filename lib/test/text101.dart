// import 'package:flutter/material.dart';
// import 'package:footer/footer.dart';
// import 'package:footer/footer_view.dart';
// import '../Home/home.dart';
// import '../page2/details.dart';

// class FooterPage extends StatefulWidget {
//   @override
//   FooterPageState createState() {
//     return new FooterPageState();
//   }
// }

// class FooterPageState extends State<FooterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FooterView(
//         children: <Widget>[
//           CenteredView(
//             child: new Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 NavBar(),
//                 SizedBox(height: 130),
//                 Hody(),
//               ],
//             ),
//           ),
//           SizedBox(height: 60),
//           MiddleChild(
//             child: Body(),
//           ),
//         ],
//         footer: new Footer(
//           child: new Padding(
//             padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
//             child: new Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 new Center(
//                   child: new Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       new Container(
//                         height: 45.0,
//                         width: 45.0,
//                         child: Center(
//                           child: Card(
//                             elevation: 5.0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//                             ),
//                             child: IconButton(
//                               icon: new Icon(
//                                 Icons.audiotrack,
//                                 size: 20.0,
//                               ),
//                               color: Color(0xFF162A49),
//                               onPressed: () {},
//                             ),
//                           ),
//                         ),
//                       ),
//                       new Container(
//                         height: 45.0,
//                         width: 45.0,
//                         child: Center(
//                           child: Card(
//                             elevation: 5.0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//                             ),
//                             child: IconButton(
//                               icon: new Icon(
//                                 Icons.fingerprint,
//                                 size: 20.0,
//                               ),
//                               color: Color(0xFF162A49),
//                               onPressed: () {},
//                             ),
//                           ),
//                         ),
//                       ),
//                       new Container(
//                         height: 45.0,
//                         width: 45.0,
//                         child: Center(
//                           child: Card(
//                             elevation: 5.0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//                             ),
//                             child: IconButton(
//                               icon: Icon(
//                                 Icons.call,
//                                 size: 20.0,
//                               ),
//                               color: Color(0xFF162A49),
//                               onPressed: () {},
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Text(
//                   'Copyright ©2020, All Rights Reserved.',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w300,
//                     fontSize: 12.0,
//                     color: Color(0xFF162A49),
//                   ),
//                 ),
//                 Text(
//                   'Powered by Nexsport',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w300,
//                     fontSize: 12.0,
//                     color: Color(0xFF162A49),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
