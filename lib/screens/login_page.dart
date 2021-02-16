import 'package:flutter/material.dart';
import 'package:ntucollab/screens/home.dart';
import 'package:ntucollab/screens/select_module_tags.dart';
import 'package:ntucollab/screens/trial_page.dart';
import 'package:ntucollab/services/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _prevScale;
  double _scale;

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (ScaleUpdateDetails details) {
        setState(() {
          _scale = (_prevScale * (details.scale));
        });
      },
      onScaleEnd: (ScaleEndDetails details) {
        setState(() {
          _prevScale = _scale;
        });
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 150.0 * _scale),
                SizedBox(
                  height: 20 * _scale,
                ),
                Text("NTUCollab",
                    style: TextStyle(
                      fontSize: 40.0 * _scale,
                      fontWeight: FontWeight.bold
                    )),
                SizedBox(
                  height: 5,
                ),
                Text("Meet. Ideate. Innovate.",
                    style: TextStyle(
                      fontSize: 25.0 * _scale,
                    )),
                SizedBox(
                  height: 60 * _scale,
                ),
                _signInButton(),
                SizedBox(
                  height: 5,
                ),
//                ElevatedButton(
//                  child: Text('Select Interest Tags'),
//                  onPressed: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => SelectModuleTags()),
//                    );
//                  },
//                ),
//                SizedBox(
//                  height: 5,
//                ),
                ElevatedButton(
                  child: Text('Select Interest Tags'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrialPage()),
                    );
                  },
                ),
                SizedBox(
                  height: 100 * _scale,
                ),
                Text("Eagles Inc.",
                    style: TextStyle(
                      fontSize: 25.0 * _scale,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Home();
                },
              ),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage("assets/images/logo_google.png"),
                height: 35.0 * _scale),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20 * _scale,
                  color: Colors.blue[600],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
