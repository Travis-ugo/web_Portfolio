import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

ScrollController scrollController;
TextStyle largeText = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 75,
    fontWeight: FontWeight.w700,
    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
  ),
);

class _HomeDesktopState extends State<HomeDesktop> {
  void open() {
    setState(() {
      height = height == 0.0 ? MediaQuery.of(context).size.height - 70 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF303030)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 50),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi,\ni'm Travis Okonicha",
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25.5,
                                      letterSpacing: 1.2,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                                Text(
                                  '''\ni design and build beautiful mobile and desktop for\nusers design and build beautiful''',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              80,
                                      letterSpacing: 1.1,
                                      color: (isColored
                                          ? Color(0xFF3D3D3D)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                ),
                                MyIcon(),
                                SizedBox(height: 15),
                              ],
                            ),
                            Hero(
                              tag: 'love',
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/black..jpg'),
                                radius:
                                    MediaQuery.of(context).size.width / 12.3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                MenuResp(),
              ],
            ),
            Recent(),
          ],
        ),
      ),
    );
  }
}

class MenuResp extends StatefulWidget {
  //final double height = 100;
  @override
  _MenuRespState createState() => _MenuRespState();
}

class _MenuRespState extends State<MenuResp> {
  void open() {
    setState(() {
      height = height == 0.0 ? MediaQuery.of(context).size.height - 70 : 0.0;
    });
  }

  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Travis-ugo',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 14, //MediaQuery.of(context).size.width / 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 12),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'WHO',
                        // style: text,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.height / 20),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/DesktopService');
                      },
                      child: Text(
                        'WHAT',
                        // style: text,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.height / 20),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/Desktopproject');
                      },
                      child: Text(
                        'WORK',
                        //style: text,
                      ),
                    ),
                    IconButton(
                      icon: (isColored ? moon : sun),
                      onPressed: () {
                        setState(() {
                          isColored = isColored == true ? false : true;
                        });
                      },
                    ),
                  ],
                ),
                Spacer(),
                //SizedBox(width: MediaQuery.of(context).size.width / 3),
                FlatButton(
                  onPressed: () => open(),
                  child: Text(
                    'CONTACT',
                    // style: text,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Center(
              child: AnimatedContainer(
                height: height,
                width: MediaQuery.of(context).size.width - 70,
                color: Colors.white,
                duration: Duration(milliseconds: 250),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            mouseCursor: SystemMouseCursors.click,
                            icon: Icon(
                              CupertinoIcons.xmark,
                              size: 45,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              open();
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      Text(
                        'Resume',
                        style: TextStyle(
                          fontSize: 16,
                          color: textColor,
                        ),
                      ),

                      // SizedBox(height: MediaQuery.of(context).size.height / 6),
                      Text(
                        'Contact Me',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      // SizedBox(height: 10),
                      Center(
                        child: Text('Thrinitee@gmail.com', style: largeText),
                      ),
                      SizedBox(height: 7),
                      MyIcon()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
        //  ),
      ),
    );
  }
}
