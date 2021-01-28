import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';

class ProjectRiri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0D0F), //Color(0xFF0F0F0F),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 2 - 50),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'WORK.',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        // fontSize: 240,
                        fontSize: MediaQuery.of(context).size.width / 5.5,
                        fontWeight: FontWeight.w600,
                        color: mainColor,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  mouseCursor: SystemMouseCursors.click,
                  icon: Icon(
                    CupertinoIcons.chevron_compact_down,
                    size: 65,
                    color: mainColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                SizedBox(height: MediaQuery.of(context).size.height / 2),
                //Container(
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/backdrop.jpeg'),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                //color: Color(0xFF0F0F0F),
                // child:
                Column(
                  children: [
                    SizedBox(height: 26),
                    Center(
                      child: Text(
                        'SELECT PROJECT',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: mainColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 8,
                    ),
                    DesktopRedesign(
                      love: travis,
                      title: travis.title,
                    ),
                    DesktopRedesign(
                      love: world,
                      title: world.title,
                    ),
                    DesktopRedesign(
                      love: soccer,
                      title: soccer.title,
                    ),
                    DesktopRedesign(
                      love: telegram,
                      title: telegram.title,
                    ),
                    DesktopRedesign(
                      love: telegram,
                      title: telegram.title,
                    ),
                    DesktopRedesign(
                      love: telegram,
                      title: telegram.title,
                    ),
                    SizedBox(height: 100),
                    MobilePin(),
                  ],
                ),
                // ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20),
          //   child: MenuMobile(),
          // ),
        ],
      ),
    );
  }
}
