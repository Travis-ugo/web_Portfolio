import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallets.color,
      body: Container(
        color: Pallets.color,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 85),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                title: NavBar(),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                actions: [
                  Container(
                    margin: EdgeInsets.only(right: 160),
                    child: Text(
                      'Travis-ugo',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
