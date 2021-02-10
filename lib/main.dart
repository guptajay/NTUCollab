import 'package:flutter/material.dart';
import 'package:ntucollab/screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Open Sans',
          )
      ),
      home: LoginPage(),
    );
  }
}
