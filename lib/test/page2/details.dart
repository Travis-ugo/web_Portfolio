import 'package:flutter/material.dart';
import 'images.dart';

class MiddleChild extends StatelessWidget {
  final Widget child;
  const MiddleChild({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(80, 80, 0.0, 80),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FDFF),
      body: MiddleChild(child: Body()),
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
        SizedBox(width: 100),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                color: Colors.green,
                height: 500,
                width: 600,
                child: MyHomePage()
                //     Image(
                //   image: AssetImage('undraw_Devices_re_dxae.png'),
                // ),
                ),
          ],
        ),
      ],
    );
  }
}
