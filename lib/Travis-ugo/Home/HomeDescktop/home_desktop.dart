import 'package:flutter/material.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

ScrollController controller;

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(''),
                  MenuDesktop(),
                  Body(),
                ],
              ),
              Contact(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                    fontSize: MediaQuery.of(context).size.height / 11.5,
                    letterSpacing: 1.2,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                '''\ni design and build beautiful mobile\nand desktop for users design and build beautiful''',
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: MediaQuery.of(context).size.height / 35,
                    letterSpacing: 1.1,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(MdiIcons.twitter),
                        color: Color(0xFF424344),
                        iconSize: 18,
                        onPressed: () async {
                          await launch(
                              Uri.parse('https://twitter.com/Travis86622225')
                                  .toString());
                        },
                      ),
                      IconButton(
                        icon: Icon(MdiIcons.github),
                        color: Color(0xFF424344),
                        iconSize: 18,
                        onPressed: () async {
                          await launch(
                              Uri.parse('https://github.com/Travis-ugo')
                                  .toString());
                        },
                      ),
                      IconButton(
                        icon: Icon(MdiIcons.linkedin),
                        color: Color(0xFF424344),
                        iconSize: 18,
                        onPressed: () async {
                          await launch(Uri.parse(
                                  'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                              .toString());
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/explore'),
                    child: Container(
                      width: MediaQuery.of(context).size.height / 6.5,
                      height: MediaQuery.of(context).size.height / 16.9,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F6FD),
                        borderRadius: BorderRadius.circular(5.5),
                      ),
                      child: Center(
                        child: Text(
                          "EXPLORE",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                              letterSpacing: 1,
                              color: Colors.blue[700],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Hero(
          tag: 'love',
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/black..jpg'),
            radius: MediaQuery.of(context).size.height / 5,
          ),
        ),
      ],
    );
  }
}
