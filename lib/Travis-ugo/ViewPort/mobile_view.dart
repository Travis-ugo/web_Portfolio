import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Travis-ugo/Utils/widgets.dart';

class MobileView extends StatefulWidget {
  @override
  _InfoMobileState createState() => _InfoMobileState();
}

class _InfoMobileState extends State<MobileView> {
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
                              child: Hero(
                                  tag: data['imageurl'],
                                  child: Image.asset(
                                    'assets/${data['imageurl']}',
                                    fit: BoxFit.fill,
                                  )),
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
