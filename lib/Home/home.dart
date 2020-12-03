import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Color(0xFFFAFDFF);
    return Scaffold(
      backgroundColor: color,
      body: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              title: NavBar(),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            //NavBar(),
            SizedBox(height: 130),
            Hody(),
          ],
        ),
      ),
    );
  }
}

var text = TextStyle(
  fontFamily: 'ProximaSoft-SemiBold.ttf',
  fontSize: 12,
  color: Colors.black87,
);

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Blog', style: text),
        SizedBox(width: 100),
        Text('About', style: text),
        SizedBox(width: 100),
        Text('Contact', style: text),
        SizedBox(width: 100),
        Icon(
          MdiIcons.moonWaxingCrescent,
          color: Colors.black54,
          size: 20,
        ),
      ],
    );
  }
}

class Hody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Hi,\n',
                      style: TextStyle(
                        fontFamily: 'ProximaSoft-Bold.ttf',
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 45,
                        letterSpacing: 0.5,
                      ),
                    ),
                    TextSpan(
                      text: "i'm Travis Okonicha\n\n",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 45,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ProximaSoft-Bold.ttf',
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '''i  design and build beautiful mobile and \ndesktop for users''',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey[800].withOpacity(0.9),
                  fontSize: 16,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'ProximaSoft-Thin.ttf',
                ),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(MdiIcons.twitter, color: Colors.black54, size: 20),
                      SizedBox(width: 15),
                      Icon(MdiIcons.github, color: Colors.black54, size: 20),
                      SizedBox(width: 15),
                      Icon(MdiIcons.linkedin, color: Colors.black54, size: 20),
                      SizedBox(width: 15),
                      Icon(MdiIcons.linkedin, color: Colors.black54, size: 20),
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 125,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Center(
                      child: Text(
                        "Explore",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProximaSoft-Bold.ttf',
                          color: Colors.blue,
                          fontSize: 12,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80, bottom: 50),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/black..jpg'),
            radius: 120,
          ),
        ),
      ],
    );
  }
}
