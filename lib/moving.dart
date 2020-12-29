import 'package:flutter/material.dart';

class Moving extends StatefulWidget {
  
  @override
  _MovingState createState() => _MovingState();
}
class _MovingState extends State<Moving> {
  
  double posL = 0;
  double posR = 0;
  double posT = 0;
  double posB = 0;

  void _movewidget(String pos) {
    setState(() {
      if (pos == "Up") {
        posL = 0;
        posR = 0;
        posT = 0;
        posB = 100;
      } else if (pos == "Right") {
        posL = 100;
        posR = 0;
        posT = 0;
        posB = 0;
      } else if (pos == "Down") {
        posL = 0;
        posR = 0;
        posT = 100;
        posB = 0;
      } else if (pos == "Left") {
        posL = 0;
        posR = 100;
        posT = 0;
        posB = 0;
      }
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moving Animation'),
      ),
      body: Center(
          child: Container(
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              left: posL,
              right: posR,
              top: posT,
              bottom: posB,
              duration: Duration(milliseconds: 500),
              child: Center(
                child: Container(
                  color: Colors.red,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 160,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Up");
                },
                child: Icon(Icons.keyboard_arrow_up),
              ),
            ),
Positioned(
              bottom: 60,
              left: 260,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Right");
                },
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 160,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Down");
                },
                child: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 60,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Left");
                },
                child: Icon(Icons.keyboard_arrow_left),
              ),
            )
          ],
        ),
      )),
    );
  }
}
