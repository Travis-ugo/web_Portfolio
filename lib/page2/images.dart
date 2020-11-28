import 'package:flutter/material.dart';
import 'package:image_slider/image_slider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  /// This pub allows you to make image_slider widget and also multiple other useful widgets like walkthrough etc.

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  TabController tabController;

  static List<String> links = [
    'assets/undraw_Devices_re_dxae.png',
    'assets/undraw_mobile.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ImageSlider(
      /// Shows the tab indicating circles at the bottom
      showTabIndicator: false,

      /// Cutomize tab's colors
      tabIndicatorColor: Colors.lightBlue,

      /// Customize selected tab's colors
      tabIndicatorSelectedColor: Color.fromARGB(255, 0, 0, 255),

      /// Height of the indicators from the bottom
      tabIndicatorHeight: 16,

      /// Size of the tab indicator circles
      tabIndicatorSize: 16,

      /// tabController for walkthrough or other implementations
      tabController: tabController,

      /// Animation curves of sliding
      curve: Curves.fastOutSlowIn,

      /// Width of the slider
      width: MediaQuery.of(context).size.width,

      /// Height of the slider
      height: MediaQuery.of(context).size.height,

      /// If automatic sliding is required
      autoSlide: true,

      /// Time for automatic sliding
      duration: new Duration(seconds: 6),

      /// If manual sliding is required
      /// allowManualSlide: true,

      /// Children in slideView to slide
      children: links.map((String link) {
        return new ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            link,
            width: MediaQuery.of(context).size.width,
            // height: 220,
            fit: BoxFit.fill,
          ),
        );
      }).toList(),
    );
  }
}
