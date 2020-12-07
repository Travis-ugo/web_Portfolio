import 'package:flutter/material.dart';
import 'package:travis_ugo/Project/data.dart';

import 'package:flutter/widgets.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  List<Data> math = [
    Data(
      title: 'First wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: 'assets/black..jpg',
    ),
    Data(
      title: 'First wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: 'assets/black..jpg',
    ),
    Data(
      title: 'First wave',
      subtitle: 'the first class of the fifaohdfjarst wave and math',
      imageurl: 'assets/black..jpg',
    ),
    Data(
      title: 'First wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: 'assets/black..jpg',
    ),
    Data(
      title: 'First wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: 'assets/black..jpg',
    ),
    Data(
      title: 'First wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: 'assets/black..jpg',
    ),
    Data(
      title: 'First wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: 'assets/black..jpg',
    ),
    Data(
      title: 'third wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: 'assets/net.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var cool = Container(
      height: 600,
      width: 300,
      color: Colors.yellow,
    );

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: GridView.count(
              //ScrollController(initialScrollOffset: 10.0, keepScrollOffset: true),

              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 1,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(math.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(children: [
                    Container(
                      height: 600,
                      width: 400,
                      child: Image.asset(
                        '${math[index].imageurl}',
                        // '${math[index].title}',
                        // style: GoogleFonts.varelaRound(
                        //   textStyle: TextStyle(
                        //     fontSize: 10,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.black54,
                        //   ),
                      ),
                    ),
                  ]
                      //),
                      ),
                );
              }),
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: cool,
          ),
        ],
      ),
    );
  }
}
