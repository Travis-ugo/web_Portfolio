import 'package:flutter/material.dart';
import '../utils/widgets.dart';

class Hover extends StatefulWidget {
  @override
  _HoverState createState() => _HoverState();
}

class _HoverState extends State<Hover> {
  double _heigh = 150;
  double _widgth = 200;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Image.asset(
          tracker.imageurl,
        ),
        height: _heigh,
        width: _widgth,
        duration: Duration(milliseconds: 200),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => Dialog(),
        );
      },
      onHover: (value) {
        setState(() {
          _heigh = 200;
          _widgth = value ? 400 : 200;
        });
      },
    );
  }
}

class Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: AlertDialog(
        scrollable: true,
        contentPadding: EdgeInsets.all(100),
        title: Text(teleBot.title),
        content: Column(
          children: [
            Text(teleBot.subtitle),
            Image.asset(tracker.imageurl),
            Image.asset(tracker.imageurl),
            Image.asset(tracker.imageurl),
            Image.asset(tracker.imageurl),
            Image.asset(tracker.imageurl),
            Image.asset(tracker.imageurl),
          ],
        ),
      ),
    );
  }
}

final Data teleBot = Data(
  title: 'First wave',
  subtitle: 'the first class of the first wave and math',
  imageurl: 'assets/black..jpg',
);
final Data tracker = Data(
  title: 'third wave',
  subtitle: 'the first class of the first wave and math',
  imageurl: 'assets/net.jpg',
);
