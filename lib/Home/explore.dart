import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Home/home.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4FAFD),
      body: CenteredView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/black..jpg'),
            ),
            SizedBox(height: 20),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('PORTFOLIO', style: text),
                  SizedBox(width: 50),
                  Text('RESUME', style: text),
                  SizedBox(width: 50),
                  Text('CONTACT', style: text),
                  SizedBox(width: 50),
                  Icon(
                    MdiIcons.moonWaxingCrescent,
                    color: Colors.black54,
                    size: 17,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(100.0),
              child: Column(
                children: [
                  Text(
                    'Projects',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 0.5,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Travis',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 0.5,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Skills',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        letterSpacing: 0.5,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            IconButton(
              icon: Icon(MdiIcons.accountCancel),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
