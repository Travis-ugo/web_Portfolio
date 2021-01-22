import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/home_mobile.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

var largeText = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 75,
    fontWeight: FontWeight.w700,
  ),
);
ScrollController scrollController;

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                        color: Colors.black,
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
                                        color: Colors.black54,
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
            PoolKit(),
          ],
        ),
      ),
    );
  }
}

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: largeText,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/mobileproject'),
            child: Container(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.height / 14,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.black, style: BorderStyle.solid),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'View all work',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    height: 17,
                    width: 1,
                    color: Colors.black,
                  ),
                  const Icon(Icons.arrow_forward, size: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PoolKit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Center(
        child: Text(
          'Whats good HombeBoy',
          style: largeText,
        ),
      ),
    );
  }
}
// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
