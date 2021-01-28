import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/menu_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Skills/mobile_skills.dart';
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
    color: Color(0xFFf6f6f6),
  ),
);

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF303030)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi,\ni'm Travis Okonicha",
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                11.5,
                                        letterSpacing: 1.2,
                                        color: (isColored
                                            ? Color(0xFF303030)
                                            : Color(0xFFf6f6f6)),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '''\ni design and build beautiful mobile\nand desktop for users design and build beautiful''',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.varelaRound(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                35,
                                        letterSpacing: 1.1,
                                        color: (isColored
                                            ? Color(0xFF303030)
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
                            ),
                            Hero(
                              tag: 'love',
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage('assets/black..jpg'),
                                radius:
                                    MediaQuery.of(context).size.height / 5.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(MdiIcons.arrowDown),
                  ],
                ),
              ),
            ),
            Recent(),
            DesktopFoot(),
          ],
        ),
      ),
    );
  }
}

var mainStyle = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: mainColor,
  ),
);
var subStyle = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w200,
  ),
);
Color day = Color(0xFFf6f6f6);
Color night = Colors.black;

class MobileSkills extends StatefulWidget {
  @override
  _MobileSkillsState createState() => _MobileSkillsState();
}

class _MobileSkillsState extends State<MobileSkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SKilBalls(),
        ),
      ),
    );
  }
}

class SkillPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MenuMobile(),
              Center(
                child: Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Icon(MdiIcons.arrowDown),
            ],
          ),
        ),
      ),
    );
  }
}

class Pagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        SkillPage(),
        MobileSkills(), // class MobileProject extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 50),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     MenuMobile(),
//                     Center(
//                       child: Text(
//                         'Projects',
//                         style: TextStyle(
//                           fontSize: 75,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Icon(MdiIcons.arrowDown),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height / 3),
//             Center(
//               child: Text(
//                 'Select Project',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height / 4),
//             MobileData(
//               title: travis.title,
//               subtitle: travis.subtitle,
//               love: travis,
//               imageurl: travis.imageurl,
//             ),
//             MobileData(
//               title: telegram.title,
//               subtitle: telegram.subtitle,
//               love: telegram,
//               imageurl: telegram.imageurl,
//             ),
//             MobileData(
//               title: world.title,
//               subtitle: world.subtitle,
//               love: world,
//               imageurl: world.imageurl,
//             ),
//             MobileData(
//               title: soccer.title,
//               subtitle: soccer.subtitle,
//               love: soccer,
//               imageurl: soccer.imageurl,
//             ),
//             SizedBox(height: 100),
//             MobilePin(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProjectMake extends StatefulWidget {
//   @override
//   _ProjectMakeState createState() => _ProjectMakeState();
// }

// class _ProjectMakeState extends State<ProjectMake> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               color: Color(0xFF04A5F0),
//               child: Center(
//                 child: Stack(
//                   children: [
//                     Text(
//                       'Work',
//                       style: GoogleFonts.varelaRound(
//                         textStyle: TextStyle(
//                           fontSize: 100,
//                           fontWeight: FontWeight.w800,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height - 90,
//                     width: MediaQuery.of(context).size.width,
//                     child: Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Icon(
//                         Icons.arrow_downward,
//                         size: 34,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: MediaQuery.of(context).size.height / 6),
//                   Container(
//                     color: Color(0xFF04A5F0),
//                     child: Column(
//                       children: [
//                         SizedBox(height: 26),
//                         Center(
//                           child: Text(
//                             'Select Project',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: MediaQuery.of(context).size.height / 6,
//                         ),
//                         // MobileRedesign(
//                         //   love: travis,
//                         //   title: travis.title,
//                         // ),
//                         // MobileRedesign(
//                         //   love: world,
//                         //   title: world.title,
//                         // ),
//                         // MobileRedesign(
//                         //   love: soccer,
//                         //   title: soccer.title,
//                         // ),
//                         // MobileRedesign(
//                         //   love: telegram,
//                         //   title: telegram.title,
//                         // ),
//                         // MobileRedesign(
//                         //   love: telegram,
//                         //   title: telegram.title,
//                         // ),
//                         // MobileRedesign(
//                         //   love: telegram,
//                         //   title: telegram.title,
//                         // ),
//                         SizedBox(height: 100),
//                         MobilePin(),
//                       ],
//                     ),
//                   ),

// class MobileRender extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Map data = {};
//     data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
//     print(data);

//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 50),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         // SizedBox(height: 200),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Column(
//                               children: [
//                                 Text(
//                                   'Year',
//                                   style: TextStyle(fontWeight: FontWeight.w600),
//                                 ),
//                                 Text(
//                                   data['year'],
//                                   style: GoogleFonts.varelaRound(
//                                     textStyle: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w300,
//                                       color: Colors.black,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             // SizedBox(width: 50),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Tools',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                                 Text(
//                                   data['tool'],
//                                   style: GoogleFonts.varelaRound(
//                                     textStyle: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w300,
//                                       color: Colors.black,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                         // SizedBox(height: 40),
//                         Text(
//                           data['title'],
//                           style: GoogleFonts.varelaRound(
//                             textStyle: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               fontSize: 24,
//                               letterSpacing: 0.5,
//                               color: Color(0xFF3D68DF),
//                             ),
//                           ),
//                           textAlign: TextAlign.start,
//                         ),
//                         //  SizedBox(height: 20),
//                         Text(
//                           data['subtitle'],
//                           style: GoogleFonts.varelaRound(
//                             textStyle: TextStyle(
//                               fontSize: 20,
//                               letterSpacing: 0.5,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           textAlign: TextAlign.start,
//                         ),
//                         // SizedBox(height: 10),
//                         Text(
//                           data['info'],
//                           style: GoogleFonts.varelaRound(
//                             textStyle: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w300,
//                               color: Colors.black,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           textAlign: TextAlign.start,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             MyIcon(),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   MobileFooter(),
//                   // SizedBox(height: 20),
//                   Container(
//                     height: 200,
//                     width: MediaQuery.of(context).size.width,
//                     child: Image.asset(
//                       data['imageurl'],
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   MobilePin(),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(Icons.email),
//                   GestureDetector(
//                     onTap: () => Navigator.pop(context),
//                     child: Text(
//                       'BACK TO PROJETS',
//                       style: GoogleFonts.varelaRound(
//                         textStyle: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w300,
//                           color: Colors.black,
//                           letterSpacing: 0.5,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: MenuMobile(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
      ],
    );
  }
}
