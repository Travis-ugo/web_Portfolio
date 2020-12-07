import 'package:flutter/material.dart';
import 'package:travis_ugo/Home/exports.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: CenteredView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/black..jpg'),
            ),
            SizedBox(height: 20),
            AppBar(
              automaticallyImplyLeading: false,
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
                  IconButton(
                    icon: Icon(
                      MdiIcons.moonWaxingCrescent,
                      color: Colors.black54,
                      size: 17,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(90.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/projects'),
                    child: Text(
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
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/skills'),
                    child: Text(
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
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            IconButton(
              mouseCursor: SystemMouseCursors.click,
              icon: Icon(
                CupertinoIcons.xmark,
                size: 45,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
