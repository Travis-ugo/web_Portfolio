import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis_ugo/Travis-ugo/Contact/desktop_footer.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/Utils/widgets.dart';

class ServiceDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF303030)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200),
              child: Text(
                'WHAT.',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    // fontSize: 240,
                    fontSize: MediaQuery.of(context).size.width / 5.5,
                    fontWeight: FontWeight.w700,
                    color: mainColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            Text(
              'CREATIVE RASTER',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: mainColor,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 70),
            Text(
              'Consistency is all i need to Hard work\nwill do the magic and Practice',
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Consistency is all i need to succed Hard work and Practice will do the magic\nHard work and Practice  succed Hard work and Practice will\n succed Hard work and Practice will',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.3,
                fontSize: 12,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2),
            Text(
              'SERVICES',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: mainColor,
                letterSpacing: 1.0,
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
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mobile Applications',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                    Text(
                      'Web Development',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 130),
                Column(
                  children: [
                    Text(
                      'Design',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'UI Design',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                    Text(
                      'UX Design',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 130),
                Column(
                  children: [
                    Text(
                      'Deploy',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'FireBase',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                    Text(
                      'AWS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            DesktopFooter()
          ],
        ),
      ),
    );
  }
}
