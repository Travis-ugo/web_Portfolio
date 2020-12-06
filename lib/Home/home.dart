import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Color color = Color(0xFFF4FAFD);
TextStyle text = GoogleFonts.varelaRound(
  textStyle: TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  ),
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        Text('PORTFOLIO', style: text),
        SizedBox(width: 70),
        Text('RESUME', style: text),
        SizedBox(width: 70),
        Text('CONTACT', style: text),
        SizedBox(width: 70),
        Icon(
          MdiIcons.moonWaxingCrescent,
          color: Colors.black54,
          size: 17,
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
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          letterSpacing: 0.5,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "i'm Travis Okonicha\n\n",
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          letterSpacing: 0.5,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '''i  design and build beautiful mobile and \ndesktop for users''',
                textAlign: TextAlign.left,
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                    letterSpacing: 0.8,
                    color: Colors.grey[500],
                  ),
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
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/explore'),
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F6FD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "EXPLORE",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'ProximaSoft-SemiBold.ttf',
                            color: Colors.blue[400],
                            fontSize: 9,
                            letterSpacing: 0.5,
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
