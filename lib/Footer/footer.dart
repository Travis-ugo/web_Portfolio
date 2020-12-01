import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:travis_ugo/Home/home.dart';
import 'package:travis_ugo/ToDo/Services.dart';
import 'package:travis_ugo/page2/details.dart';

class Foter extends StatefulWidget {
  @override
  _FoterState createState() => _FoterState();
}

class _FoterState extends State<Foter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FooterView(
      children: <Widget>[
        Home(),
        Details(),
        Services(),
      ],
      footer: new Footer(
        padding: EdgeInsets.all(0.0),
        backgroundColor: Colors.blue,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Container(
                    height: 45.0,
                    width: 45.0,
                    child: Center(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: IconButton(
                          icon: new Icon(
                            Icons.audiotrack,
                            size: 20.0,
                          ),
                          color: Color(0xFF162A49),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    height: 45.0,
                    width: 45.0,
                    child: Center(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: IconButton(
                          icon: new Icon(Icons.fingerprint, size: 20.0),
                          color: Color(0xFF162A49),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    height: 45.0,
                    width: 45.0,
                    child: Center(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: IconButton(
                          icon: new Icon(
                            Icons.call,
                            size: 20.0,
                          ),
                          color: Color(0xFF162A49),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Copyright ©2020, All Rights Reserved.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Color(0xFF162A49),
              ),
            ),
            Text(
              'Powered by Nexsport',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
                color: Color(0xFF162A49),
              ),
            ),
          ],
        ),
      ),
      flex: 2,
    ));
  }
}
