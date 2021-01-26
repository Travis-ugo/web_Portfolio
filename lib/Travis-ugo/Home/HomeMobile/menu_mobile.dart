import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/Utils/pallets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'home_mobile.dart';

class MenuMobile extends StatefulWidget {
  @override
  _MenuMobileState createState() => _MenuMobileState();
}

class _MenuMobileState extends State<MenuMobile> {
  void open() {
    setState(() {
      height = height == 0.0 ? MediaQuery.of(context).size.height - 70 : 0.0;
      suplus = suplus == 0 ? 0 : 0;
    });
  }

  void loud() {
    setState(() {
      isLight = isLight == true ? false : true;
    });
  }

  PageController pageController = PageController();
  int currentIndex = 0;
  double height = 0;
  double suplus = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: ActionsMobile(),
              ),
              IconButton(
                icon: Icon(
                  MdiIcons.menu,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  open();
                },
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Center(
            child: AnimatedContainer(
              height: height,
              width: MediaQuery.of(context).size.width - 50,
              color: Colors.white,
              duration: Duration(milliseconds: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        mouseCursor: SystemMouseCursors.click,
                        icon: Icon(
                          CupertinoIcons.xmark,
                          size: 50,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          open();
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                      open();
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20 - suplus,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/mobileproject');
                      open();
                    },
                    child: Text(
                      'projects',
                      style: TextStyle(
                        fontSize: 20 - suplus,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/mobileskills');
                      open();
                    },
                    child: Text(
                      'skills',
                      style: TextStyle(
                        fontSize: 20 - suplus,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/mobilefooter');
                      open();
                    },
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 20 - suplus,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  GestureDetector(
                    child: Text(
                      'Resume',
                      style: TextStyle(
                        fontSize: 20 - suplus,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.height / 3 - 10 - suplus,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await launch(
                                Uri.parse('https://twitter.com/Travis86622225')
                                    .toString());
                          },
                          child: SelectableText(
                            'thrinitee@gmail.com',
                            style: TextStyle(
                              fontSize: 24 - suplus,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        MyIcon(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ActionsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
