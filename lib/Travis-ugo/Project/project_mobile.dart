import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class MobileProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFfdd615),
            child: Center(
              child: Text(
                'Projects',
                style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Scaffold(
          //   backgroundColor: mainColor,
          //   body:
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 30),
                Center(
                  child: Text(
                    'Select Project',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 30),
                MobileData(
                  title: 'Travs-ugo.com',
                  subtitle: 'Dektop web App/ mobile for this website',
                  love: port,
                  imageurl: 'download.jpg',
                ),
                MobileData(
                  title: 'Telegram Bot',
                  subtitle: 'Forex forwarder telegram bot',
                  love: klaws,
                  imageurl: 'agro.jpg',
                ),
                MobileData(
                  title: 'Votonic',
                  subtitle: 'voting App accesed from the web',
                  love: world,
                  imageurl: 'black..jpg',
                ),
                MobileData(
                  title: 'Football live',
                  subtitle: 'Live stream sport application ',
                  love: world,
                  imageurl: 'net.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
