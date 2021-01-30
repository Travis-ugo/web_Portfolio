import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/mobile_footer.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/Utils/widgets.dart';

import 'home_mobile.dart';
import 'menu_mobile.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF303030)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 400),
                  child: Text(
                    'WHAT.',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 46,
                      ),
                    ),
                  ),
                ),
                Icon(FeatherIcons.arrowDown),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'CREATIVE RASTER',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Text(
                        'Consistency is all i need to Hard work will do the magic and Practice',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            fontSize: 26,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Consistency is all i need to succed Hard work and Practice will do the magic Hard work and Practice  succed Hard work and Practice will succed Hard work and Practice will',
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
                      Text(
                        'SERVICES',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Develope',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Mobile Applications',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                  ),
                                ),
                              ),
                              Text(
                                'Web Development',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            children: [
                              Text(
                                'Design',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'UI Design',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                  ),
                                ),
                              ),
                              Text(
                                'UX Design',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            children: [
                              Text(
                                'Deploy',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'FireBase',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                  ),
                                ),
                              ),
                              Text(
                                'AWS',
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: (isColored
                                        ? Color(0xFF303030)
                                        : Color(0xFFf6f6f6)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 3),
                    ],
                  ),
                ),
                MobileFooter(),
                MobilePin(),
              ],
            ),
          ),
          MenuMobile(),
        ],
      ),
    );
  }
}
