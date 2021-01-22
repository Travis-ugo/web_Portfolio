import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/home_desktop.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';

var mainStyle = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
);
var subStyle = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w200,
  ),
);

class DesktopProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Text(
                      'Projects',
                      style: largeText,
                    ),
                    Icon(
                      CupertinoIcons.arrow_down,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 90,
                right: 90,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 300, bottom: 150),
                      child: Text(
                        'Selected Work',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              port.title,
                              textAlign: TextAlign.start,
                              style: mainStyle,
                            ),
                            Text(
                              port.subtitle,
                              style: subStyle,
                            ),
                          ],
                        ),
                        SizedBox(width: 90),
                        DesktopData(
                          love: port,
                          imageurl: port.whiteImage,
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DesktopData(
                          love: klaws,
                          imageurl: klaws.whiteImage,
                        ),
                        SizedBox(width: 90),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(klaws.title, style: mainStyle),
                            Text(
                              klaws.subtitle,
                              style: subStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(world.title, style: mainStyle),
                            Text(
                              world.subtitle,
                              style: subStyle,
                            ),
                          ],
                        ),
                        SizedBox(width: 90),
                        DesktopData(
                          love: world,
                          imageurl: world.whiteImage,
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DesktopData(
                          love: soccer,
                          imageurl: soccer.whiteImage,
                        ),
                        SizedBox(width: 90),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(soccer.title, style: mainStyle),
                            Text(
                              soccer.subtitle,
                              style: subStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
