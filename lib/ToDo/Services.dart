import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travis_ugo/Home/home.dart';

// final List<Port> info = [
//   Port(title: 'Fine grary', subtitle: 'agricultural wEbsite', img: 'agro.jpg'),
//   Port(
//       title: 'NetFlix Redesign',
//       subtitle: 'A Redesign of Netflix',
//       img: 'net.jpg'),
//   Port(
//       title: 'Love Ink', subtitle: 'A Ui Design for love', img: 'download.jpg'),
//   Port(
//       title: 'Flutter For Web',
//       subtitle: 'A flutter Design for web',
//       img: 'intro.dart'),
// ];

final List<String> info = [
  'assets/black.jpg',
  'assets/agro.jpg',
  'assets/download.jpg',
  'assets/intro.png',
  'assets/undraw_mobile.png',
  'assets/agro.jpg',
  'assets/undraw_Devices_re_dxae.png',
  'assets/undraw_mobile.png',
];

final List<Widget> imageSliders = info
    .map((corn) => Container(
          height: 300,
          width: 300,
          child: Card(
            child: Image.asset(corn, fit: BoxFit.cover, width: 300.0),
          ),
        ))
    .toList();

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Contacts'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            color: Colors.green,
            height: 400,
            width: 600,
            child: Love(),
          ),
        ),
      ),
    );
  }
}

class Love extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 600,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 4),
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                disableCenter: true,
              ),
              items: imageSliders,
            ),
          ),
          Text("love"),
        ],
      ),
    );
  }
}

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView();
  }
}
