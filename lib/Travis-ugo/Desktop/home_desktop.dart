import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

Color day = Colors.white;
Color night = Colors.black;
bool isOpen = true;
Color mainColo = Color(0xFFf6f6f6);
Color darkMood = Color(0xFF24262c);
Color secondary = Color(0xFF303030);
IconData moonIcon = MdiIcons.moonWaxingCrescent;
IconData sunIcon = MdiIcons.starFace;
double height = 0;

class HomeDesktopRedesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xFF0F0F0F),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 100),
                          Text(
                            'Hello.\nI am Travis',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 70,
                                color: mainColo,
                                letterSpacing: 1.5,
                                //fontFamily: 'MonumentExtened',
                                fontWeight: FontWeight.bold,
                                //fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 70),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 350,
                                width: 350,
                                child: Center(
                                  child: Text(
                                    'Contact',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                ),
                              ),
                              SizedBox(width: 50),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.white,
                              ),
                              SizedBox(width: 25),
                              Text(
                                'Mobile Developer\nUX/UI Designer\nWebDeveloper',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFEBEBEB),
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(height: MediaQuery.of(context).size.height / 6),
                  Container(
                    color: Color(0xFF0F0F0F),
                    child: Column(
                      children: [
                        SizedBox(height: 200),
                        Center(
                          child: Text(
                            'Consistency is all i need to succed\nHard work and Practice will do the magic\nHard work and Practice will do the magic hold molly',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: mainColo,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 200),

                        Recent(),
                        // SizedBox(height: 300),
                        DesktopFoot(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w700,
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/projects'),
            child: Container(
              width: MediaQuery.of(context).size.width / 7.5,
              height: MediaQuery.of(context).size.height / 15,
              decoration: BoxDecoration(
                border: Border.all(
                    color: (isColored ? Color(0xFF555555) : Color(0xFFf6f6f6)),
                    style: BorderStyle.solid),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'VIEW ALL WORK',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: 1,

                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    //color: mainColo,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopFoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      color: mainColo,
      child: Center(
        child: Text(
          'Whats good HombeBoy',
          style: TextStyle(color: Colors.black, fontSize: 124),
        ),
      ),
    );
  }
}
