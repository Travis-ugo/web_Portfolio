import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class DesktopData extends StatefulWidget {
  final String imageurl;
  final String white;
  final Data love;

  const DesktopData({
    Key key,
    @required this.imageurl,
    @required this.love,
    @required this.white,
  }) : super(key: key);

  @override
  _DesktopDataState createState() => _DesktopDataState();
}

class _DesktopDataState extends State<DesktopData> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              Data instance = widget.love;
              Navigator.pushNamed(context, '/mobileInfo', arguments: {
                'title': instance.title,
                'subtitle': instance.subtitle,
                'info': instance.info,
                'imageurl': instance.imageurl,
                'whiteImage': instance.whiteImage,
              });
            },
            onHover: (value) {
              setState(() {
                _hover = _hover == true ? false : true;
              });
            },
            child: Hero(
              tag: widget.imageurl,
              child: Container(
                child: Image.asset(
                  //'assets/${widget.imageurl}',
                  (_hover
                      ? 'assets/${widget.imageurl}'
                      : 'assets/${widget.white}'),
                  fit: BoxFit.fitWidth,
                ),
                height: MediaQuery.of(context).size.width * 0.12,
                width: MediaQuery.of(context).size.width * 0.48,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DesktopRedesign extends StatefulWidget {
  final Data love;
  final String title;

  const DesktopRedesign({
    Key key,
    @required this.love,
    @required this.title,
  }) : super(key: key);

  @override
  _DesktopRedesignState createState() => _DesktopRedesignState();
}

class _DesktopRedesignState extends State<DesktopRedesign> {
  @override
  Widget build(BuildContext context) {
    double _font = MediaQuery.of(context).size.width / 9;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Center(
        child: InkWell(
          onTap: () {
            Data instance = widget.love;
            Navigator.pushNamed(context, '/DesktopInfo', arguments: {
              'title': instance.title,
              'subtitle': instance.subtitle,
              'info': instance.info,
              'imageurl': instance.imageurl,
              'whiteImage': instance.whiteImage,
              'tool': instance.tool,
              'year': instance.year,
            });
          },
          onHover: (value) {
            setState(() {
              // _font = _font == MediaQuery.of(context).size.width / 10.5
              //     ? MediaQuery.of(context).size.width / 10.5 + 600
              //     : MediaQuery.of(context).size.width / 10.5;
              // _opacity = _opacity == 1 ? 0.5 : 1;
            });
          },
          child: Text(
            widget.title,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: _font,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileRedesign extends StatelessWidget {
  final Data love;
  final String title;

  const MobileRedesign({
    Key key,
    @required this.love,
    @required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Center(
        child: GestureDetector(
          onTap: () {
            Data instance = love;
            Navigator.pushNamed(context, '/mobileInfo', arguments: {
              'title': instance.title,
              'subtitle': instance.subtitle,
              'info': instance.info,
              'imageurl': instance.imageurl,
              'whiteImage': instance.whiteImage,
              'tool': instance.tool,
              'year': instance.year,
            });
          },
          child: Text(
            title,
            style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 46,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
