import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis_ugo/Travis-ugo/Mobile/home_mobile.dart';

class DesktopRedesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = {};
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      backgroundColor: Color(0xFFe7eeed),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 150,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['title'],
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 90,
                            letterSpacing: 0.5,
                            color: Color(0xFF3D68DF),
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 20),
                      Text(
                        data['subtitle'],
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 20,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10),
                      Text(
                        data['info'],
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.5,
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyIcon(),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // this field should contain only png
                    // images else it will fuck with the design
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.email),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'BACK TO PROJETS',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
