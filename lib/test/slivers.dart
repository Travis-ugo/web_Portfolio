import 'package:flutter/material.dart';

import '../Home/home.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Variables needed to adapt FlexibleSpaceBar text color (title)
  ScrollController _scrollController;
  bool lastStatus = true;
  double height = 500;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: height,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavBar(),
                    SizedBox(height: 130),
                    Hody(),
                  ],
                ),
                centerTitle: true,
                title: _isShrink
                    ? Row(
                        children: [
                          //Replace container with your chart
                          // Here you can also use SizedBox in order to define a chart size
                          Container(
                            margin: EdgeInsets.all(10.0),
                            width: 30,
                            height: 30,
                            color: Colors.yellow,
                          ),
                          Text('A little long title'),
                        ],
                      )
                    : SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              'A little long title',
                              textAlign: TextAlign.center,
                            ),
                            //Replace container with your chart
                            Container(
                              height: 80,
                              color: Colors.yellow,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Your chart here'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              child: Text(index.toString()),
            );
          },
        ),
      ),
    );
  }
}
