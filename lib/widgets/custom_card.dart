import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  final double elevation;
  final double radius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget child;
  const CustomCard({
    Key key,
    this.elevation = 3,
    this.radius = 8.0,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.all(16.0),
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        margin: margin,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Padding(
              padding: padding,
              child: child,
            )));
  }
}