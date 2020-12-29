import 'package:flutter/material.dart';
// import 'dart:math';

class ScaleAnimation extends StatefulWidget {
  @override
  _ScaleAnimation createState() => _ScaleAnimation();
}

class _ScaleAnimation extends State<ScaleAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scale Animation'),
      ),
      body: Center(
          child: ScaleTransition(
              scale: animation,
              child: Image.network(
                'https://i2.wp.com/ceklog.kindel.com/wp-content/uploads/2013/02/firefox_2018-07-10_07-50-11.png',
                width: 280,
                height: 280,
              ))),
    );
  }
}
