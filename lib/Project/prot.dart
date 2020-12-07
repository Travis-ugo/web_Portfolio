import 'package:flutter/material.dart';
import 'data.dart';

class Model extends StatefulWidget {
  @override
  _ModelState createState() => _ModelState();
}

class _ModelState extends State<Model> {
  List<Data> math = [
    Data(
      title: 'third wave',
      subtitle: 'the first class of the first wave and math',
      imageurl: '',
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
    return GridView.count(
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
    );
  }
}
