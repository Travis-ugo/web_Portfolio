// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class Port {
//   String title;
//   String subtitle;
//   String img;

//   Port({this.title, this.subtitle, this.img});
// }

// final List<String> imgList = [
//   'assets/black.jpg',
//   'assets/agro.jpg',
//   'assets/download.jpg',
//   'assets/intro.png',
//   'assets/undraw_mobile.png',
//   'assets/agro.jpg',
//   'assets/undraw_Devices_re_dxae.png',
//   'assets/undraw_mobile.png',
// ];

// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           height: 300,
//           width: 300,
//           child: Container(
//             height: 300,
//             width: 300,
//             margin: EdgeInsets.all(5.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.asset(item, fit: BoxFit.cover, width: 1000.0),
//                     Container(
//                       height: 300,
//                       width: 300,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             Color.fromARGB(200, 0, 0, 0),
//                             Color.fromARGB(0, 0, 0, 0)
//                           ],
//                           begin: Alignment.bottomCenter,
//                           end: Alignment.topCenter,
//                         ),
//                       ),
//                       padding: EdgeInsets.symmetric(
//                         vertical: 10.0,
//                         horizontal: 20.0,
//                       ),
//                       child: Text(
//                         'No. ${imgList.indexOf(item)} image',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'ProximaSoft',
//                         ),
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//         ))
//     .toList();

// class LoveLife extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Complicated image slider demo')),
//       body: Container(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           CarouselSlider(
//             options: CarouselOptions(
//               autoPlay: true,
//               aspectRatio: 2.0,
//               enlargeCenterPage: true,
//             ),
//             items: imageSliders,
//           ),
//         ],
//       )),
//     );
//   }
// }
