import 'package:travis_ugo/Travis-ugo/Dispatch/correction.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class MenuDesktop extends StatefulWidget {
  //final double height = 100;
  @override
  _MenuDesktopState createState() => _MenuDesktopState();
}

Color day = Colors.white;
Color night = Colors.black;
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
        fontSize: MediaQuery.of(context).size.height / 40,
        fontWeight: FontWeight.w800,
        color: mainColor,
        letterSpacing: 0.5,
      ),
    );

    return
        // Scaffold(
        //   body:
        Stack(
      children: [
        // PageView(
        //   controller: pageController,
        //   children: [
        //     HomeDesktopRedesign(),
        //     ProjectDesktopRedesign(),
        //     SkillDesktopRedesign(),
        //   ],
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'T/U',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 35,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(
                    onTap: () {
                      currentIndex = 0;
                      pageController.animateToPage(
                        0,
                        curve: Curves.linear,
                        duration: Duration(
                          milliseconds: 350,
                        ),
                      );
                    },
                    child: Text(
                      'INTRO',
                      style: text,
                    )),
                SizedBox(width: MediaQuery.of(context).size.height / 20),
                InkWell(
                  onTap: () {
                    pageController.animateToPage(
                      1,
                      curve: Curves.linear,
                      duration: Duration(
                        milliseconds: 350,
                      ),
                    );
                  },
                  child: Text(
                    'WHAT',
                    style: text,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.height / 20),
                InkWell(
                  onTap: () {
                    currentIndex = 2;
                    pageController.animateToPage(
                      2,
                      curve: Curves.linear,
                      duration: Duration(
                        milliseconds: 350,
                      ),
                    );
                  },
                  child: Text(
                    'WORK',
                    style: text,
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
              color: mainColor,
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
    );
  }
}
