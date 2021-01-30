import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Dispatch/correction.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';

class ProjectRiri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF1F1F1F)),
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
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF3D3D3D) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  mouseCursor: SystemMouseCursors.click,
                  icon: Icon(
                    CupertinoIcons.chevron_compact_down,
                    size: 65,
                    color: (isColored ? Color(0xFF3D3D3D) : Color(0xFFf6f6f6)),
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
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: (isColored
                                ? Color(0xFF3D3D3D)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
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
                    DesktopPin(),
                  ],
                ),
                // ),
              ],
            ),
          ),
          MenuResp(),
        ],
      ),
    );
  }
}
