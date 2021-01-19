import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:travis_ugo/Travis-ugo/Models/project_data.dart';

var mainStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
var subStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w200,
);

class DesktopProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 90,
            right: 90,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuDesktop(),
                Padding(
                  padding: const EdgeInsets.only(top: 120, bottom: 80),
                  child: Text(
                    'Projects.',
                    style: TextStyle(
                      fontSize: 140,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5.7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Travs-ugo_\n.com',
                          textAlign: TextAlign.start,
                          style: mainStyle,
                        ),
                        Text(
                          'Dektop web App\nand mobile for this website',
                          style: subStyle,
                        ),
                      ],
                    ),
                    SizedBox(width: 90),
                    DesktopData(
                      love: port,
                      imageurl: 'download.jpg',
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DesktopData(
                      love: klaws,
                      imageurl: 'agro.jpg',
                    ),
                    SizedBox(width: 90),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Telegram_\nBot', style: mainStyle),
                        Text(
                          'Forex forwarder\ntelegram bot',
                          style: subStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Votonic_', style: mainStyle),
                        Text(
                          'voting App\naccesed from the web',
                          style: subStyle,
                        ),
                      ],
                    ),
                    SizedBox(width: 90),
                    DesktopData(
                      love: world,
                      imageurl: 'black..jpg',
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DesktopData(
                      love: world,
                      imageurl: 'net.jpg',
                    ),
                    SizedBox(width: 70),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Football_\nlive', style: mainStyle),
                        Text(
                          '    Live stream\nsport application',
                          style: subStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
