import 'package:flutter/material.dart';
import 'package:travis_ugo/Home/home.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Contacts'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Row(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('homeboy'),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 90),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 170,
                        width: 260,
                        child: Card(
                          color: Colors.blue,
                          child: Image(
                            image: AssetImage(
                                'assets/undraw_Mobile_application_mr4r.svg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 290,
                        child: Card(
                          color: Colors.blue,
                          child: Image(
                            image:
                                AssetImage('assets/undraw_Devices_re_dxae.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 170,
                        width: 260,
                        child: Card(
                          color: Colors.blue,
                          child: Image(
                            image: AssetImage('assets/undraw.svg'),
                            //fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
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

// Container(
//         color: Colors.blue,
//         height: 500,
//         width: MediaQuery.of(context).size.width,
//         child: Center(child: Text('lolo')),
//       ),
