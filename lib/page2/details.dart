import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travis_ugo/Home/home.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(child: Body()),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0.0, 0.0, 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What I do',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[400],
                      fontSize: 26,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'I Design',
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 26,
                      letterSpacing: 0.8,
                      fontFamily: 'Montserrat-SemiBold.ttf',
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Beautiful apps people love',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 26,
                      letterSpacing: 0.8,
                      fontFamily: 'Montserrat-Regular.ttf',
                    ),
                  ),
                  SizedBox(height: 17),
                  Text(
                    '''Hi,
I am a Flutter Developer from Nigeria.
I am insanely passionate about designing beautiful UI/UX Design, 
and functional Mobile Applications/Software.''',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 13,
                      letterSpacing: 0.8,
                      fontFamily: 'Montserrat-Regular.ttf',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 150),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 450,
              width: 500,
              //padding: EdgeInsets.all(50),
              child: SvgPicture.asset(
                'assets/undraw.svg',
                height: 50,
                color: Colors.green,
              ), //Image.asset(),
            ),
          ],
        ),
      ],
    );
  }
}
// var logo = new SvgPicture.asset(
//   'assets/images/candle.svg',
//   height: 20.0,
//   width: 20.0,
//   allowDrawingOutsideViewBox: true,
// ),
