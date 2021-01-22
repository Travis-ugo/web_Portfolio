import 'package:flutter/foundation.dart';
import 'package:travis_ugo/Travis-ugo/Footer/desktop_footer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

import 'home_desktop.dart';

class MenuDesktop extends StatefulWidget {
  final double height = 100;
  @override
  _MenuDesktopState createState() => _MenuDesktopState();
}

bool isOpen = true;
Color mainColor = Color(0xFFf6f6f6);
Color darkMood = Color(0xFF24262c);
Color secondary = Color(0xFF303030);
IconData moonIcon = MdiIcons.moonWaxingCrescent;
IconData sunIcon = MdiIcons.starFace;
double height = 0;

class _MenuDesktopState extends State<MenuDesktop> {
  void open() {
    setState(() {
      height = height == 0.0 ? MediaQuery.of(context).size.height - 70 : 0.0;
    });
  }

  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var text = GoogleFonts.varelaRound(
      textStyle: TextStyle(
        fontSize: MediaQuery.of(context).size.height / 38,
        fontWeight: FontWeight.w300,
        color: Color(0xFF242525),
        letterSpacing: 0.5,
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              HomeDesktop(),
              DesktopProject(),
              DesktopSkills(),
              //DesktopFooter(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'T/U',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 43,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  FlatButton(
                      onPressed: () {
                        currentIndex = 0;
                        pageController.animateToPage(0,
                            curve: Curves.linear,
                            duration: Duration(
                              milliseconds: 350,
                            ));
                      },
                      child: Text(
                        'Home',
                        style: text,
                      )),
                  SizedBox(width: MediaQuery.of(context).size.height / 20),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                      pageController.animateToPage(
                        1,
                        curve: Curves.linear,
                        duration: Duration(
                          milliseconds: 350,
                        ),
                      );
                    },
                    child: Text(
                      'Project',
                      style: text,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.height / 20),
                  FlatButton(
                    onPressed: () {
                      currentIndex = 2;
                      pageController.animateToPage(2,
                          curve: Curves.linear,
                          duration: Duration(
                            milliseconds: 350,
                          ));
                    },
                    child: Text(
                      'Skills',
                      style: text,
                    ),
                  ),
                  // SizedBox(width: MediaQuery.of(context).size.height / 20),
                  // FlatButton(
                  //   onPressed: () async {
                  //     await launch(Uri.parse('').toString());
                  //   },
                  //   child: Text(
                  //     'Resume',
                  //     style: text,
                  //   ),
                  // ),
                ]),
                FlatButton(
                  onPressed: () => open(),
                  child: Text(
                    'CONTACT',
                    style: text,
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
                color: Colors.grey[700],
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
                              color: Colors.white,
                            ),
                            onPressed: () {
                              open();
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            textColor = textColor == Colors.pink
                                ? Colors.white
                                : Colors.pink;
                          });
                        },
                        child: Text('mood'),
                      ),
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
                          color: Colors.white,
                        ),
                      ),
                      // SizedBox(height: 10),
                      Center(
                        child: Text('Thrinitee@gmail.com', style: largeText),
                      ),
                      SizedBox(height: 7),
                      Text('socils',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      MyIcon()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageScroll extends StatefulWidget {
  @override
  _PageScrollState createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MenuDesktop(),
        ],
      ),
    );
  }
}
