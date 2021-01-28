import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Contact/mobile_footer.dart';
import 'package:travis_ugo/Travis-ugo/Desktop/menu_descktop.dart';
import 'package:travis_ugo/Travis-ugo/Utils/widgets.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0D0F),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 400),
              child: Text(
                'WHAT.',
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  fontSize: 46,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    'CREATIVE RASTER',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: mainColor,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 70),
                  Text(
                    'Consistency is all i need to Hard work will do the magic and Practice',
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      fontSize: 26,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Consistency is all i need to succed Hard work and Practice will do the magic Hard work and Practice  succed Hard work and Practice will succed Hard work and Practice will',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.3,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 150),
                  Text(
                    'SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: mainColor,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Develope',
                            style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Mobile Applications',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                          Text(
                            'Web Development',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          Text(
                            'Design',
                            style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'UI Design',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                          Text(
                            'UX Design',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        children: [
                          Text(
                            'Deploy',
                            style: TextStyle(
                              color: mainColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 26,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'FireBase',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                          Text(
                            'AWS',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 3),
                ],
              ),
            ),
            MobileFooter(),
          ],
        ),
      ),
    );
  }
}
