import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu_mobile.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.width / 20),
          MenuMobile(),
          Spacer(flex: 1),
          Hero(
            tag: 'love',
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/black..jpg'),
              radius: MediaQuery.of(context).size.width / 5.7,
            ),
          ),
          Spacer(flex: 1),
          Text(
            "Hi, i'm Travis Okonicha\n",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width / 20,
                letterSpacing: 0.3,
                color: Color(0xFF41413F),
              ),
            ),
          ),
          Text(
            '''i  design and build beautiful mobile and desktop\nfor users design and build beautiful''',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: MediaQuery.of(context).size.width / 43,
                letterSpacing: 0.3,
                color: Color(0xFF41413F),
              ),
            ),
          ),
          Spacer(flex: 1),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/explore'),
            child: Container(
              width: MediaQuery.of(context).size.width / 6.5,
              height: MediaQuery.of(context).size.width / 16.9,
              decoration: BoxDecoration(
                color: Color(0xFFE8F6FD),
                borderRadius: BorderRadius.circular(5.5),
              ),
              child: Center(
                child: Text(
                  "EXPLORE",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 9,
                      letterSpacing: 0.4,
                      color: Colors.blue[400],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.width / 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: Colors.white,
                iconSize: 14,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.github),
                color: Colors.white,
                iconSize: 14,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://github.com/Travis-ugo').toString());
                },
              ),
              IconButton(
                icon: Icon(MdiIcons.linkedin),
                color: Colors.white,
                iconSize: 14,
                onPressed: () async {
                  await launch(Uri.parse(
                          'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                      .toString());
                },
              ),
            ],
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
