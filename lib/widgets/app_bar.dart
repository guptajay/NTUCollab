import 'package:flutter/material.dart';
import 'package:ntucollab/screens/view_profile.dart';

class AppbarWidget {
  static getAppBar(
    BuildContext context,
    String title,
    Color border,
    Color bgColor,
  ) {
    return AppBar(
        title: Text(title, style: TextStyle(color: border, fontSize: 35)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.supervised_user_circle, size: 40),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ViewProfilePage()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,5,0),
            child: IconButton(
              icon: Image.asset('assets/images/logo.png'),
              onPressed: () {
              },
            ),
          ),
        ],
        backgroundColor: bgColor,
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
          color: border,
        ),
        bottom: PreferredSize(
            child: Container(
              color: border,
              height: 4.0,
            ),
            preferredSize: Size.fromHeight(4.0)));
  }
}
