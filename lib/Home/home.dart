import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavBar(),
            SizedBox(height: 130),
            Hody(),
          ],
        ),
      ),
    );
  }
}

var text = TextStyle(
  //fontWeight: FontWeight.bold,
  fontFamily: 'Montserrat-SemiBold.ttf',
  fontSize: 16,
  color: Colors.grey[500],
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
        Icon(Icons.mood)
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
          padding: const EdgeInsets.only(left: 130),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/black..jpg'),
            radius: 160,
          ),
        ),
        Divider(
          color: Colors.grey[900],
          thickness: 10.0,
          indent: 70.0,
          endIndent: 70.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 230, top: 50),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Hi,\n',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                        fontSize: 24,
                        letterSpacing: 0.5,
                      ),
                    ),
                    TextSpan(
                      text: "Homeboy what's good\nare you Busy today?",
                      style: TextStyle(
                        // color: Color.fromRGBO(152, 152, 152, 1.0),
                        color: Colors.grey[500],
                        fontSize: 23,
                        letterSpacing: 0.8,
                        fontFamily: 'Montserrat-Regular.ttf',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 130,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(color: Colors.blue[400]),
                    ),
                    child: Center(
                      child: Text(
                        "Explore",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[400],
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        // child: Icon(MdiIcons.github, color: Colors.white),
                        radius: 15,
                        backgroundColor: Colors.blue[400],
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.transparent,
                        // child: new Icon(MdiIcons.github, color: Colors.blue),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue[400],
                        // child: Icon(MdiIcons.linkedin, color: Colors.blue[400]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
