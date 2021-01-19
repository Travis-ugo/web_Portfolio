import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class DesktopData extends StatelessWidget {
  // final String rightTitle;
  // final String leftTitle;
  final String imageurl;
  final Data love;
  // final String rightSubtitle;
  // final String leftSubtitle;

  const DesktopData({
    Key key,
    // this.rightTitle,
    // this.rightSubtitle,
    @required this.imageurl,
    @required this.love,
    // this.leftTitle,
    // this.leftSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       rightTitle,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontWeight: FontWeight.w700,
        //         fontSize: 18,
        //         //fontSize: MediaQuery.of(context).size.width / 40,
        //       ),
        //     ),
        //     Text(
        //       rightSubtitle,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontWeight: FontWeight.w200,
        //         fontSize: 14,
        //         //fontSize: MediaQuery.of(context).size.width / 40,
        //       ),
        //     ),
        //   ],
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              Data instance = love;
              Navigator.pushNamed(context, '/views', arguments: {
                'title': instance.title,
                'subtitle': instance.subtitle,
                'info': instance.info,
                'imageurl': instance.imageurl,
                'backgroundimage': instance.backgroundImage,
              });
            },
            child: Hero(
              tag: imageurl,
              child: Container(
                child: Image.asset(
                  'assets/$imageurl',
                  fit: BoxFit.fitWidth,
                ),
                height: MediaQuery.of(context).size.width * 0.12,
                width: MediaQuery.of(context).size.width * 0.48,
              ),
            ),
          ),
        ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       leftTitle,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontWeight: FontWeight.w700,
        //         fontSize: 24,
        //         //fontSize: MediaQuery.of(context).size.width / 40,
        //       ),
        //     ),
        //     Text(
        //       leftSubtitle,
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontWeight: FontWeight.w200,
        //         fontSize: 16,
        //         //fontSize: MediaQuery.of(context).size.width / 40,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}

class MobileData extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageurl;
  final Data love;

  const MobileData({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.imageurl,
    @required this.love,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: imageurl,
              child: GestureDetector(
                onTap: () {
                  Data instance = love;
                  Navigator.pushNamed(context, '/mobileInfo', arguments: {
                    'title': instance.title,
                    'subtitle': instance.subtitle,
                    'info': instance.info,
                    'imageurl': instance.imageurl,
                    'backgroundimage': instance.backgroundImage,
                  });
                },
                child: ClipRRect(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                      elevation: 0.0,
                      child: Image.asset(
                        'assets/$imageurl',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 80),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 26,
                //fontSize: MediaQuery.of(context).size.width / 23,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w100,
                fontSize: 18,
                //fontSize: MediaQuery.of(context).size.width / 23
              ),
            ),
          ],
        ),
      ),
    );
  }
}
