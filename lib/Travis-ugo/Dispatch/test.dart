import 'package:flutter/material.dart';

class TestME extends StatefulWidget {
  @override
  _TestMEState createState() => _TestMEState();
}

class _TestMEState extends State<TestME> {
  ScrollController _scrollController;
  double _scrollOffset = 0.0;
  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60.0),
        child: CustomAppBar(scrollOffset: _scrollOffset),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(scrollOffset: _scrollOffset),
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: 1000,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key key,
    this.scrollOffset = 0.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(
        (scrollOffset / 350).clamp(0, 1).toDouble(),
      ),
    );
  }
}
