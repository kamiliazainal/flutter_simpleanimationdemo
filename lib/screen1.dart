import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Animation'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'screen2');
        },
        child: Hero(
          tag: 'apple',
          child: Center(
            child: Column(
              children: [
                Image.network(
                  'https://i2.wp.com/ceklog.kindel.com/wp-content/uploads/2013/02/firefox_2018-07-10_07-50-11.png',
                  width: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
