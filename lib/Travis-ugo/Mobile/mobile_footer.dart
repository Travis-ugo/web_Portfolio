import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MobileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(

        Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 12),
          Divider(
            color: (isColored ? Color(0xFF303030) : Color(0xFFEBEBEB)),
            height: 12,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ready\nWhen \nyou are',
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    fontSize: MediaQuery.of(context).size.height / 10,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Text(
                'Travis-ugo',
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Divider(indent: 160, color: Colors.white, height: 1),
              SizedBox(height: MediaQuery.of(context).size.height / 40),
              Text(
                'lets talk,\nlets work,\nto create beauty',
                textAlign: TextAlign.end,
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 40),
              FlatButton(
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
                child: Text(
                  'thrinitee@gmail.com',
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color:
                          (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    ),
                  ),
                ),
              ),
              SelectableText(
                '+234 9055758751',
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 40),
              Divider(
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                height: 12,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.github),
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                iconSize: 16,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://github.com/Travis-ugo').toString());
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
                icon: Icon(MdiIcons.linkedin),
                color: (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
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
    );
  }
}
