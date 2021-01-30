import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';

import 'home_mobile.dart';
import 'menu_mobile.dart';

class MobileRiri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = {};
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 200),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Year',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    data['year'],
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tools',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    data['tool'],
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Text(
                            data['title'],
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                letterSpacing: 0.5,
                                color: Color(0xFF3D68DF),
                              ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 20),
                          Text(
                            data['subtitle'],
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontSize: 20,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 10),
                          Text(
                            data['info'],
                            style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                letterSpacing: 0.5,
                              ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MyIcon(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //MobileFooter(),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      data['imageurl'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  MobilePin(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.email),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'BACK TO PROJETS',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          letterSpacing: 0.5,
                        ),
                      ),
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

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: (isColored ? mMoon : mSun),
                        onPressed: () {
                          setState(() {
                            isColored = isColored == true ? false : true;
                          });
                        },
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/black..jpg'),
                        radius: MediaQuery.of(context).size.width / 4.5,
                      ),
                      Text(
                        "Hi, i'm Travis Okonicha",
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: MediaQuery.of(context).size.width / 15.5,
                            letterSpacing: 1.2,
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ),
                      Text(
                        '''i design and build beautiful mobile and desktop for users design and build beautiful''',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: MediaQuery.of(context).size.width / 29,
                            letterSpacing: 0.9,
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ),
                      MyIcon(),
                      Text('Travis-ugo'),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 30,
                        color:
                            (isColored ? Color(0xFF383838) : Color(0xFFf6f6f6)),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'YOUNG AND CREATIVE',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFf6f6f6)),
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Consistency is all i need to Hard work\nwill do the magic and Practice',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFf6f6f6)),
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                          fontSize: 18,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Consistency is all i need to succed\nHard work and Practice will do the magic\nHard work and Practice ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFf6f6f6)),
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.3,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 150),
                    RecentWork(),
                    SizedBox(height: 70),
                    MobilePin(),
                  ],
                ),
              ],
            ),
          ),
          MenuMobile(),
        ],
      ),
    );
  }
}
