import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/widgets.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
                              fontSize: 47,
                              letterSpacing: 0.5,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '''i  design and build beautiful mobile and desktop\nfor users design and build beautiful''',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                        letterSpacing: 0.8,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(MdiIcons.twitter),
                        color: Colors.blue[500],
                        iconSize: 18,
                        onPressed: () async {
                          await launch(
                              Uri.parse('https://twitter.com/Travis86622225')
                                  .toString());
                        },
                      ),
                      //SizedBox(width: 15),
                      IconButton(
                        icon: Icon(MdiIcons.github),
                        color: Colors.blue[500],
                        iconSize: 18,
                        onPressed: () async {
                          await launch(
                              Uri.parse('https://github.com/Travis-ugo')
                                  .toString());
                        },
                      ),
                      //SizedBox(width: 15),
                      IconButton(
                        icon: Icon(MdiIcons.linkedin),
                        color: Colors.blue[400],
                        iconSize: 18,
                        onPressed: () async {
                          await launch(Uri.parse(
                                  'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                              .toString());
                        },
                      ),
                      // SizedBox(width: 15),
                      // Icon(MdiIcons.linkedin, color: Colors.black54, size: 20),
                    ],
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/explore'),
                    child: Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F6FD),
                        borderRadius: BorderRadius.circular(5.5),
                      ),
                      child: Center(
                        child: Text(
                          "EXPLORE",
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 9,
                              letterSpacing: 0.5,
                              color: Colors.blue[400],
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
            radius: 125,
          ),
        ),
      ],
    );
  }
}
// Center(
//           child: CircleAvatar(
//             backgroundColor: Colors.transparent,
//             backgroundImage: AssetImage('assets/black..jpg'),
//             radius: 125,
//           ),
//         ),
