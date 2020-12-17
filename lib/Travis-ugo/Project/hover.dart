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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Image.asset(
            teleBot.imageurl,
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
      ),
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
            Text(teleBot.info),
            Text(teleBot.info),
            Image.asset(soccer.imageurl),
          ],
        ),
      ),
    );
  }
}

final Data teleBot = Data(
  title: 'First wave',
  info:
      '''they are very important to comply with our animation. `SingleTickerProviderStateMixin`
   manages our animation time, `AnimationController`
   will manage our animation, such as start, stop.''',
  imageurl: 'assets/black..jpg',
);
final Data soccer = Data(
  title: 'third wave',
  info: 'the first class of the first wave and math',
  imageurl: 'assets/net.jpg',
);
final Data portfolio = Data(
  title: 'third wave',
  info: 'the first class of the first wave and math',
  imageurl: 'assets/net.jpg',
);
final Data ethics = Data(
  title: 'third wave',
  info: 'the first class of the first wave and math',
  imageurl: 'assets/net.jpg',
);

class Asteroids extends StatefulWidget {
  @override
  _AsteroidsState createState() => _AsteroidsState();
}

class _AsteroidsState extends State<Asteroids> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          data['title'],
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal,
            fontSize: 24,
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/${data['imageurl']}'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: Text(
              data['info'],
              style: TextStyle(
                // fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
