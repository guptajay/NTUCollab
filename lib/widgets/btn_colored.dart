import 'package:flutter/material.dart';
class BtnColored extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BtnColored({Key key, @required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme
          .of(context)
          .accentColor,
      child: Text(text, style: const TextStyle(color: Colors.white)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      onPressed: onPressed,
    );
  }
}
