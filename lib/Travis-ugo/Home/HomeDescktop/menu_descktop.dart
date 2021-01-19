import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

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

class _MenuDesktopState extends State<MenuDesktop> {
  @override
  Widget build(BuildContext context) {
    var text = GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: MediaQuery.of(context).size.height / 75,
        fontWeight: FontWeight.w400,
        color: Color(0xFF242525),
        letterSpacing: 0.5,
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Travis-ugo',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 43,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                letterSpacing: 0.5,
              ),
            ),
          ),
          Row(
            children: [
              FlatButton(
                  onPressed: () async {
                    await launch(Uri.parse('').toString());
                  },
                  child: Text(
                    '  PORTFOLIO',
                    style: text,
                  )),
              SizedBox(width: MediaQuery.of(context).size.height / 20),
              FlatButton(
                onPressed: () async {
                  await launch(Uri.parse('').toString());
                },
                child: Text(
                  'RESUME',
                  style: text,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height / 20),
              IconButton(
                  icon: Icon(moonIcon),
                  color: Colors.black54,
                  iconSize: 17,
                  onPressed: () {}),
            ],
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                isOpen = false;
                //  height = MediaQuery.of(context).size.height - 70;
              });
            },
            child: Text(
              'CONTACT',
              style: text,
            ),
          ),
        ],
      ),
    );
  }
}

void open() {
  isOpen = false;
  //  height = MediaQuery.of(context).size.height - 70;
}

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  double height = 0;

  final number = new ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: number,
        builder: (context, value, child) {
          return Center(
            child: AnimatedContainer(
              height: height,
              width: MediaQuery.of(context).size.width - 70,
              color: Colors.pink,
              duration: Duration(milliseconds: 250),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
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
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 4),
                    Text('Contact Me'),
                    SizedBox(height: MediaQuery.of(context).size.height / 30),
                    Center(child: Text('Thrinitee@gmail.com')),
                    SizedBox(height: MediaQuery.of(context).size.height / 7),
                    Text('socils'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(MdiIcons.twitter),
                          color: Colors.black,
                          iconSize: 16,
                          onPressed: () async {
                            await launch(
                                Uri.parse('https://twitter.com/Travis86622225')
                                    .toString());
                          },
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 65),
                        IconButton(
                          icon: Icon(MdiIcons.github),
                          color: Colors.black,
                          iconSize: 16,
                          onPressed: () async {
                            await launch(
                                Uri.parse('https://github.com/Travis-ugo')
                                    .toString());
                          },
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 65),
                        IconButton(
                          icon: Icon(MdiIcons.linkedin),
                          color: Colors.black,
                          iconSize: 16,
                          onPressed: () async {
                            await launch(Uri.parse(
                                    'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                                .toString());
                          },
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 65),
                        IconButton(
                          icon: Icon(MdiIcons.linkedin),
                          color: Colors.black,
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
            ),
          );
        });
  }
}

// showDialog(
//   context: context,
//   barrierColor: Colors.transparent,
//   builder: (context) => AlertDialog(
//     elevation: 0.0,
//     contentPadding: EdgeInsets.zero,
//     content: Container(
//       height: MediaQuery.of(context).size.height - 100,
//       width: MediaQuery.of(context).size.width - 100,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Text(
//             'Blog',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height / 20,
//           ),
//           Text(
//             'About',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height / 20,
//           ),
//           Text(
//             'What',
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height / 10,
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height / 3 - 10,
//             width: MediaQuery.of(context).size.width,
//             color: Colors.black12,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   icon: Icon(MdiIcons.twitter),
//                   color: Colors.black,
//                   iconSize: 16,
//                   onPressed: () async {
//                     await launch(Uri.parse(
//                             'https://twitter.com/Travis86622225')
//                         .toString());
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(MdiIcons.github),
//                   color: Colors.black,
//                   iconSize: 16,
//                   onPressed: () async {
//                     await launch(
//                         Uri.parse('https://github.com/Travis-ugo')
//                             .toString());
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(MdiIcons.linkedin),
//                   color: Colors.black,
//                   iconSize: 16,
//                   onPressed: () async {
//                     await launch(Uri.parse(
//                             'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
//                         .toString());
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
