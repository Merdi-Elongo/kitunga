import 'dart:math';

import 'package:flutter/material.dart';

class LoaderView extends StatefulWidget {
  @override
  _LoaderViewState createState() => _LoaderViewState();
}

class _LoaderViewState extends State<LoaderView>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation_rotation;
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;

  final double initialRadius = 30.0;
  double _radius = 0.0;

  @override
  void initState() {
    super.initState();

    this.controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    this.animation_rotation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 1.0, curve: Curves.linear)));
    animation_radius_in = Tween<double>(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.50, 1.0, curve: Curves.elasticIn)));
    animation_radius_out = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.50, 0.10, curve: Curves.elasticOut)));
    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.50 && controller.value <= 1.0) {
          _radius = animation_radius_in.value * initialRadius;
        } else if (controller.value >= 0.0 && controller.value <= 0.10) {
          _radius = animation_radius_out.value * initialRadius;
        }
      });
    });
    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Center(
        child: RotationTransition(
          turns: animation_rotation,
          child: Stack(
            children: <Widget>[
              Dot(
                radius: 30.0,
                color: Colors.black12,
              ),
              Transform.translate(
                offset: Offset(_radius * cos(pi / 4), _radius * sin(pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              ),
              Transform.translate(
                offset: Offset(
                    _radius * cos(2 * pi / 4), _radius * sin(2 * pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              ),
              Transform.translate(
                offset: Offset(
                    _radius * cos(3 * pi / 4), _radius * sin(3 * pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              ),
              Transform.translate(
                offset: Offset(
                    _radius * cos(4 * pi / 4), _radius * sin(4 * pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              ),
              Transform.translate(
                offset: Offset(
                    _radius * cos(5 * pi / 4), _radius * sin(5 * pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              ),
              Transform.translate(
                offset: Offset(
                    _radius * cos(6 * pi / 4), _radius * sin(6 * pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              ),
              Transform.translate(
                offset: Offset(
                    _radius * cos(7 * pi / 4), _radius * sin(7 * pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              ),
              Transform.translate(
                offset: Offset(
                    _radius * cos(8 * pi / 4), _radius * sin(8 * pi / 4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  Dot({this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(color: this.color, shape: BoxShape.circle),
      ),
    );
  }
}
