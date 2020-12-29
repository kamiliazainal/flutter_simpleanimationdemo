import 'package:flutter/material.dart';
import 'package:simpleanimationdemo/moving.dart';
import 'package:simpleanimationdemo/scaleanimation.dart';
import 'package:simpleanimationdemo/screen1.dart';
import 'package:simpleanimationdemo/screen2.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Moving(),
      routes: <String, WidgetBuilder>{
        'screen1': (context) => Screen1(),
        'screen2': (context) => Screen2(),
        'scale': (context) => ScaleAnimation(),
        'move': (context) => Moving(),
      },
    );
  }
}