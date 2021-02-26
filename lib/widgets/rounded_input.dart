import 'package:flutter/material.dart';
import 'package:ntucollab/widgets/text_field.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.blue[800],
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.blue[800],
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}