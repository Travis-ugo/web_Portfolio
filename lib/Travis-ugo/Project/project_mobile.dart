import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Home/HomeMobile/menu_mobile.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class MobileProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MenuMobile(),
                    Center(
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: 75,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(MdiIcons.arrowDown),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            Center(
              child: Text(
                'Select Project',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 4),
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
    );
  }
}
