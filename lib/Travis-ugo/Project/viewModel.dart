import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Travis-ugo/Utils/widgets.dart';

class DesktopInfo extends StatefulWidget {
  @override
  _DesktopInfoState createState() => _DesktopInfoState();
}

class _DesktopInfoState extends State<DesktopInfo> {
  Map data = {};
  void animate() {}

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);
    double animatedContainer = MediaQuery.of(context).size.height / 2.3;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: data['imageurl'],
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/${data['imageurl']}',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: AnimatedContainer(
                            height: animatedContainer,
                            width: MediaQuery.of(context).size.width / 5.5,
                            color: Colors.pink,
                            duration: Duration(seconds: 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 80,
                            bottom: 25,
                            left: 120,
                          ),
                          child: Text(
                            data['title'],
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 48,
                                letterSpacing: 0.5,
                                color: Colors.black,
                              ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 70,
                            bottom: 25,
                          ),
                          child: Text(
                            data['info'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Center(
                          child: IconButton(
                            icon: Icon(MdiIcons.github),
                            color: Colors.black,
                            iconSize: 32,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 50.0,
                top: 40,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Close',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 0.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 50.0,
                bottom: 40,
                child: IconButton(
                  icon: Icon(MdiIcons.github),
                  color: Colors.white,
                  iconSize: 32,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoMobile extends StatefulWidget {
  @override
  _InfoMobileState createState() => _InfoMobileState();
}

class _InfoMobileState extends State<InfoMobile> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: data['imageurl'],
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/${data['imageurl']}',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width - 50,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 2.3,
                              width: MediaQuery.of(context).size.width / 1.5,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Center(
                            child: IconButton(
                              icon: Icon(MdiIcons.github),
                              color: Colors.black,
                              iconSize: 32,
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35,
                              bottom: 20,
                            ),
                            child: Text(
                              data['title'],
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 34,
                                  letterSpacing: 0.5,
                                  color: Colors.black,
                                ),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35,
                            ),
                            child: Text(
                              data['info'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Center(
                            child: IconButton(
                              mouseCursor: SystemMouseCursors.click,
                              icon: Icon(
                                CupertinoIcons.xmark,
                                size: 45,
                                color: Colors.black87,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScreenTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        child: Column(
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: 1,
              child: Text(
                'holy molly',
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                    letterSpacing: 0.5,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
        duration: Duration(seconds: 1),
        tween: Tween<double>(begin: 0, end: 1),
        builder: (BuildContext context, double value, Widget child) {
          return Opacity(
            opacity: value,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 1 + value * 250,
                  width: 150,
                  color: Colors.blue,
                  child: child,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
