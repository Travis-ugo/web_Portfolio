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
            MobileBody(),
            RecentWork(),
            MobilePin(),
          ],
        ),
      ),
    );
  }
}

class MobileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 1),
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
          MyIcon(),
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
          Icon(
            MdiIcons.arrowDown,
            color: Colors.black,
            size: 20,
          ),
        ],
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Recent\nWork',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/mobileproject');
            },
            child: Container(
              width: MediaQuery.of(context).size.height / 5,
              height: MediaQuery.of(context).size.height / 16.9,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'View Recent work',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.red,
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
      height: MediaQuery.of(context).size.height / 4,
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
