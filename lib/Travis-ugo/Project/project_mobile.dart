import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class ProjectsMobile extends StatefulWidget {
  @override
  _ProjectsMobileState createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MobileData(
                      love: port,
                      right: 'loco_   ',
                      imageurl: 'download.jpg',
                      left: '',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MobileData(
                      love: klaws,
                      left: '   Portfolio_',
                      imageurl: 'agro.jpg',
                      right: '',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MobileData(
                      love: world,
                      right: 'flutter_   ',
                      imageurl: 'black..jpg',
                      left: '',
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

class MobileData extends StatelessWidget {
  final String right;
  final String imageurl;
  final String left;
  final Data love;

  const MobileData({
    Key key,
    this.right,
    this.imageurl,
    this.left,
    @required this.love,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
      child: Row(
        children: [
          Text(
            right,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 23,
            ),
          ),
          GestureDetector(
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
                height: MediaQuery.of(context).size.width * 0.21,
                width: MediaQuery.of(context).size.width * 0.57,
              ),
            ),
          ),
          Text(
            left,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 23,
            ),
          ),
        ],
      ),
    );
  }
}

class InfoMobile extends StatefulWidget {
  @override
  _InfoMobileState createState() => _InfoMobileState();
}

class _InfoMobileState extends State<InfoMobile> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: data['imageurl'],
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage('assets/${data['imageurl']}'),
                  //
                  //   ),
                  // ),
                  color: Colors.blue,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/${data['imageurl']}',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(data['subtitle']),
                    SizedBox(height: 5),
                    Text(
                      data['info'],
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      icon: Icon(MdiIcons.github),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 5.0,
                top: 5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Close',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        letterSpacing: 0.5,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
