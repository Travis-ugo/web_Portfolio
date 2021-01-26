import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeDescktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu_mobile.dart';

class HomeMobileRedesign extends StatefulWidget {
  @override
  _HomeMobileRedesignState createState() => _HomeMobileRedesignState();
}

class _HomeMobileRedesignState extends State<HomeMobileRedesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/backdrop.jpeg'),
                //     fit: BoxFit.fill,
                //   ),
                //),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/backdrop.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 100),
                            Text(
                              'Hello.\nI am\nTravis',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 82,
                                  color: mainColor,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Mobile Developer\nUX/UI Designer\nWebDeveloper',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFFEBEBEB),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 35),
                            Container(
                              height: 260,
                              width: 260,
                              child: Center(
                                child: Text(
                                  'Contact',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(160),
                                border:
                                    Border.all(color: Colors.white, width: 0.2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/backdrop.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Consistency is all i need to succed\nHard work and Practice will do the magic\nHard work and Practice will do the magic hold molly',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xFFEBEBEB),
                                fontWeight: FontWeight.w300,
                                letterSpacing: 0.5,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 10,
                          ),
                          RecentWork(),
                          SizedBox(height: 70),
                          MobilePin(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: MenuMobile(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(MdiIcons.email),
          color: Colors.black,
          iconSize: 16,
          onPressed: () async => await launch(
              Uri.parse('https://twitter.com/Travis86622225').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.twitter),
          color: Colors.black,
          iconSize: 16,
          onPressed: () async => await launch(
              Uri.parse('https://twitter.com/Travis86622225').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.github),
          color: Colors.black,
          iconSize: 16,
          onPressed: () async => await launch(
              Uri.parse('https://github.com/Travis-ugo').toString()),
        ),
        IconButton(
          icon: Icon(MdiIcons.linkedin),
          color: Colors.black,
          iconSize: 16,
          onPressed: () async => await launch(Uri.parse(
                  'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
              .toString()),
        ),
      ],
    );
  }
}

class RecentWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/backdrop.jpeg'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                fontSize: 42,
                color: Color(0xFFEBEBEB),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/mobileproject');
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2.3,
              height: MediaQuery.of(context).size.height / 16,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'View Recent work',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFEBEBEB),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobilePin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Travis Okonicha ugochukwu'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(MdiIcons.email),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.twitter),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 15),
              IconButton(
                icon: Icon(MdiIcons.github),
                color: Colors.black,
                iconSize: 16,
                onPressed: () async {
                  await launch(
                      Uri.parse('https://github.com/Travis-ugo').toString());
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
                  await launch(Uri.parse('https://twitter.com/Travis86622225')
                      .toString());
                },
              ),
            ],
          ),
          Text('version 2.1'),
          Text('. . .'),
        ],
      ),
    );
  }
}
