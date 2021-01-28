import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MobileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   backgroundColor: Color(0xFF0F0F0F),
        //   body:
        Column(
      children: [
        // Container(
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        // ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 12),
              Divider(
                color: Colors.white,
                height: 12,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ready\nWhen \nyou are',
                    style: TextStyle(
                      fontFamily: 'sans-serif',
                      fontWeight: FontWeight.w400,
                      color: mainColor,
                      fontSize: MediaQuery.of(context).size.height / 10,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Text(
                    'Travis-ugo',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: mainColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Divider(indent: 160, color: Colors.black54, height: 1),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  Text(
                    'lets talk,\nlets work,\nto create beauty',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: mainColor,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  FlatButton(
                    onPressed: () async {
                      await launch(
                          Uri.parse('https://twitter.com/Travis86622225')
                              .toString());
                    },
                    child: Text(
                      'thrinitee@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: mainColor,
                      ),
                    ),
                  ),
                  SelectableText(
                    '+234 9055758751',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: mainColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  Divider(
                    color: Colors.white,
                    height: 12,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  IconButton(
                    icon: Icon(MdiIcons.twitter),
                    color: Colors.white,
                    iconSize: 16,
                    onPressed: () async {
                      await launch(
                          Uri.parse('https://twitter.com/Travis86622225')
                              .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.github),
                    color: Colors.white,
                    iconSize: 16,
                    onPressed: () async {
                      await launch(Uri.parse('https://github.com/Travis-ugo')
                          .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.linkedin),
                    color: Colors.white,
                    iconSize: 16,
                    onPressed: () async {
                      await launch(Uri.parse(
                              'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                          .toString());
                    },
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.linkedin),
                    color: Colors.white,
                    iconSize: 16,
                    onPressed: () async {
                      await launch(Uri.parse(
                              'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                          .toString());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        MobilePin(),
        // Container(
        //   color: mainColor,
        //   height: 100,
        //   width: MediaQuery.of(context).size.width,
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             IconButton(
        //               icon: Icon(MdiIcons.twitter),
        //               color: Colors.black,
        //               iconSize: 16,
        //               onPressed: () async {
        //                 await launch(
        //                     Uri.parse('https://twitter.com/Travis86622225')
        //                         .toString());
        //               },
        //             ),
        //             IconButton(
        //               icon: Icon(MdiIcons.github),
        //               color: Colors.black,
        //               iconSize: 16,
        //               onPressed: () async {
        //                 await launch(
        //                     Uri.parse('https://github.com/Travis-ugo')
        //                         .toString());
        //               },
        //             ),
        //             IconButton(
        //               icon: Icon(MdiIcons.linkedin),
        //               color: Colors.black,
        //               iconSize: 16,
        //               onPressed: () async {
        //                 await launch(Uri.parse(
        //                         'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
        //                     .toString());
        //               },
        //             ),
        //           ],
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             Text('..Travis-ugo'),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
      // ),
    );
  }
}
