import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu_mobile.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('built again');
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  MenuMobile(),
                  Hero(
                    tag: 'love',
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/black..jpg'),
                      radius: MediaQuery.of(context).size.width / 4.7,
                    ),
                  ),
                  Text(
                    "Hi, i'm Travis Okonicha",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width / 15,
                        letterSpacing: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'i design and build beautiful mobile and desktop\nfor users design and build',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: MediaQuery.of(context).size.width / 30,
                        letterSpacing: 0.3,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(MdiIcons.twitter),
                        color: Colors.black,
                        iconSize: 20,
                        onPressed: () async {
                          await launch(
                              Uri.parse('https://twitter.com/Travis86622225')
                                  .toString());
                        },
                      ),
                      IconButton(
                        icon: Icon(MdiIcons.github),
                        color: Colors.black,
                        iconSize: 20,
                        onPressed: () async {
                          await launch(
                              Uri.parse('https://github.com/Travis-ugo')
                                  .toString());
                        },
                      ),
                      IconButton(
                        icon: Icon(MdiIcons.linkedin),
                        color: Colors.black,
                        iconSize: 20,
                        onPressed: () async {
                          await launch(Uri.parse(
                                  'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                              .toString());
                        },
                      ),
                    ],
                  ),
                  SizedBox(),
                  Text(
                    "Travis-Ugo",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        letterSpacing: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(MdiIcons.arrowDown),
                    color: Colors.black,
                    iconSize: 20,
                    onPressed: () async {},
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Recent\nWork',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/mobileproject');
                    },
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.height / 5.5,
                          height: MediaQuery.of(context).size.height / 16.9,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: const Text(
                            'View Recent work',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        Container(
                          child: const Icon(Icons.arrow_forward, size: 18),
                          width: MediaQuery.of(context).size.height / 5.5,
                          height: MediaQuery.of(context).size.height / 16.9,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              child: Row(
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
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
                  IconButton(
                    icon: Icon(MdiIcons.github),
                    color: Colors.black,
                    iconSize: 16,
                    onPressed: () async {
                      await launch(Uri.parse('https://github.com/Travis-ugo')
                          .toString());
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
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
                  SizedBox(height: MediaQuery.of(context).size.height / 15),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
