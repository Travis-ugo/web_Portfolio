import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';

class Views extends StatefulWidget {
  @override
  _ViewsState createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      keepPage: true,
      initialPage: 0,
    );
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            allowImplicitScrolling: true,
            controller: controller,
            scrollDirection: Axis.vertical,
            pageSnapping: true,
            children: [
              Skills(),
              Projects(),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 300,
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(height: 120),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/black..jpg'),
                ),
                SizedBox(height: 20),
                PreferredSize(
                  preferredSize: Size.fromHeight(300),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('PORTFOLIO', style: text),
                        SizedBox(width: 30),
                        Text('RESUME', style: text),
                        SizedBox(width: 30),
                        Text('CONTACT', style: text),
                        SizedBox(width: 30),
                        IconButton(
                          icon: Icon(
                            MdiIcons.moonWaxingCrescent,
                            color: Colors.black54,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/projects'),
                      child: Text(
                        'Projects',
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
                    SizedBox(height: 30),
                    Text(
                      'Travis',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 0.5,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/skills'),
                      child: Text(
                        'Skills',
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
                    SizedBox(height: 30),
                  ],
                ),
                IconButton(
                  mouseCursor: SystemMouseCursors.click,
                  icon: Icon(
                    CupertinoIcons.xmark,
                    size: 25,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/explore');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
