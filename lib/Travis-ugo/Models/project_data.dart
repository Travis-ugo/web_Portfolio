import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class ProjectData extends StatelessWidget {
  final String right;
  final String imageurl;
  final String left;
  final Data love;

  const ProjectData({
    Key key,
    this.right,
    this.imageurl,
    this.left,
    @required this.love,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            right,
            style: TextStyle(
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
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 23,
            ),
          ),
        ],
      ),
    );
  }
}
