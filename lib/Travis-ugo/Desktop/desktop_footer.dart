import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DesktopFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height + 400,
          width: MediaQuery.of(context).size.width - 350,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ready\nWhen \nyou are',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontFamily: 'sans-serif',
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                        fontSize: MediaQuery.of(context).size.height / 5,
                      ),
                    ),
                  ),
                  Text(
                    'Travis-ugo',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 1,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
                  Text(
                    'lets talk,\nlets work,\nto create beauty',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
                  FlatButton(
                    onPressed: () async {
                      await launch(
                          Uri.parse('https://twitter.com/Travis86622225')
                              .toString());
                    },
                    child: Text(
                      'thrinitee@gmail.com',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFf6f6f6)),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SelectableText(
                    '+234 9055758751',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
                  IconButton(
                    icon: Icon(MdiIcons.twitter),
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    iconSize: 16,
                    onPressed: () async {
                      await launch(
                          Uri.parse('https://twitter.com/Travis86622225')
                              .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.github),
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    iconSize: 16,
                    onPressed: () async {
                      await launch(Uri.parse('https://github.com/Travis-ugo')
                          .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.linkedin),
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    iconSize: 16,
                    onPressed: () async {
                      await launch(Uri.parse(
                              'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                          .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.twitter),
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    iconSize: 16,
                    onPressed: () async {
                      await launch(
                          Uri.parse('https://twitter.com/Travis86622225')
                              .toString());
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 55),
                ],
              ),
            ],
          ),
        ),
        DesktopPin(),
        // Container(
        //   color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
        //   height: 150,
        //   width: MediaQuery.of(context).size.width,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 50),
        //     child: Row(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             FlatButton(
        //               onPressed: () async {
        //                 await launch(
        //                     Uri.parse('https://twitter.com/Travis86622225')
        //                         .toString());
        //               },
        //               child: Text(
        //                 'dribbble',
        //                 style: TextStyle(
        //                     color: (isColored
        //                         ? Color(0xFF303030)
        //                         : Color(0xFFf6f6f6)),
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.w500),
        //               ),
        //             ),
        //             SizedBox(width: MediaQuery.of(context).size.width / 45),
        //             FlatButton(
        //               onPressed: () async {
        //                 await launch(
        //                     Uri.parse('https://twitter.com/Travis86622225')
        //                         .toString());
        //               },
        //               child: Text(
        //                 'Instagram',
        //                 style: TextStyle(
        //                     color: (isColored
        //                         ? Color(0xFF303030)
        //                         : Color(0xFFf6f6f6)),
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.w500),
        //               ),
        //             ),
        //             SizedBox(width: MediaQuery.of(context).size.width / 45),
        //             FlatButton(
        //               onPressed: () async {
        //                 await launch(
        //                     Uri.parse('https://twitter.com/Travis86622225')
        //                         .toString());
        //               },
        //               child: Text(
        //                 'LinkedIn',
        //                 style: TextStyle(
        //                     color: (isColored
        //                         ? Color(0xFF303030)
        //                         : Color(0xFFf6f6f6)),
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.w500),
        //               ),
        //             ),
        //             SizedBox(width: MediaQuery.of(context).size.width / 45),
        //             FlatButton(
        //               onPressed: () async {
        //                 await launch(
        //                     Uri.parse('https://twitter.com/Travis86622225')
        //                         .toString());
        //               },
        //               child: Text(
        //                 'Twitter',
        //                 style: TextStyle(
        //                     color: (isColored
        //                         ? Color(0xFF303030)
        //                         : Color(0xFFf6f6f6)),
        //                     fontSize: 16,
        //                     fontWeight: FontWeight.w500),
        //               ),
        //             ),
        //           ],
        //         ),
        //         Row(
        //           children: [
        //             Text(
        //               'Travis-ugo',
        //               style: TextStyle(
        //                 fontWeight: FontWeight.w300,
        //                 color:
        //                     (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
        //                 fontSize: 14,
        //               ),
        //             ),
        //             SizedBox(width: MediaQuery.of(context).size.width / 35),
        //             Text(
        //               'version 2.01',
        //               style: TextStyle(
        //                 fontFamily: 'sans-serif',
        //                 fontWeight: FontWeight.w300,
        //                 color:
        //                     (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
        //                 fontSize: 14,
        //               ),
        //             ),
        //             SizedBox(width: MediaQuery.of(context).size.width / 35),
        //             Text(
        //               'Back to Top',
        //               style: TextStyle(
        //                 fontFamily: 'sans-serif',
        //                 fontWeight: FontWeight.w500,
        //                 color:
        //                     (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
        //                 fontSize: 14,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
      //   ),
      // ),
    );
  }
}
