import 'package:flutter/material.dart';
import 'package:travis_ugo/Travis-ugo/utils/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuMobile extends StatefulWidget {
  @override
  _MenuMobileState createState() => _MenuMobileState();
}

class _MenuMobileState extends State<MenuMobile> {
  @override
  Widget build(BuildContext context) {
    var _text = GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: MediaQuery.of(context).size.width / 45,
        fontWeight: FontWeight.w500,
        color: Color(0xFF242525),
        letterSpacing: 0.5,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.accessibility,
            color: Colors.black,
            size: 30,
          ),
          IconButton(
            icon: Icon(
              MdiIcons.menu,
              size: 30,
            ),
            onPressed: () {
              showDialog(
                context: context,
                barrierColor: Colors.transparent,
                builder: (context) => AlertDialog(
                  elevation: 0.0,
                  contentPadding: EdgeInsets.zero,
                  content: Container(
                    height: MediaQuery.of(context).size.height - 50,
                    width: MediaQuery.of(context).size.width - 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: const Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 24,
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
                          },
                          child: const Text(
                            'projects',
                            style: TextStyle(
                              fontSize: 24,
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
                          },
                          child: const Text(
                            'skills',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        const Text(
                          'Resume',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 3 - 10,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  await launch(Uri.parse(
                                          'https://twitter.com/Travis86622225')
                                      .toString());
                                },
                                child: const SelectableText(
                                  'thrinitee@gmail.com',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(MdiIcons.twitter),
                                    color: Colors.black,
                                    iconSize: 18,
                                    onPressed: () async {
                                      await launch(Uri.parse(
                                              'https://twitter.com/Travis86622225')
                                          .toString());
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(MdiIcons.github),
                                    color: Colors.black,
                                    iconSize: 18,
                                    onPressed: () async {
                                      await launch(Uri.parse(
                                              'https://github.com/Travis-ugo')
                                          .toString());
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(MdiIcons.linkedin),
                                    color: Colors.black,
                                    iconSize: 18,
                                    onPressed: () async {
                                      await launch(Uri.parse(
                                              'https://www.linkedin.com/in/travis-okonicha-66a15b1b8/')
                                          .toString());
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
