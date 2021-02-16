import 'package:flutter/material.dart';
class CustomDialog extends StatelessWidget {
  final Widget child;
  const CustomDialog({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dialogRadius = BorderRadius.circular(8.0);
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: dialogRadius),
        child: ClipRRect(
          borderRadius: dialogRadius,
          child: child,
        ));
  }
}