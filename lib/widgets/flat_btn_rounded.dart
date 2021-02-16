import 'package:flutter/material.dart';
class FlatBtnRounded extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const FlatBtnRounded({Key key, @required this.text, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(text),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      onPressed: onPressed,
    );
  }
}