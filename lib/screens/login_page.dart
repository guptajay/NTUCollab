import 'package:flutter/material.dart';
import 'package:ntucollab/screens/home.dart';
import 'package:ntucollab/screens/module_tags.dart';
import 'package:ntucollab/screens/register.dart';
import 'package:ntucollab/services/auth.dart';
import 'package:ntucollab/widgets/rounded_input.dart';
import 'package:ntucollab/widgets/rounded_password.dart';

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
    Size size = MediaQuery.of(context).size;
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
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40 * _scale,
                  ),
                  Image(
                      image: AssetImage("assets/images/logo.png"),
                      height: 150.0 * _scale),
                  SizedBox(
                    height: 20 * _scale,
                  ),
                  Text("NTUCollab",
                      style: TextStyle(
                          fontSize: 40.0 * _scale, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Meet. Ideate. Innovate.",
                      style: TextStyle(
                        fontSize: 25.0 * _scale,
                      )),
                  SizedBox(
                    height: 30 * _scale,
                  ),
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 10 * _scale,
                  ),
                  OutlineButton(
                    splashColor: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ModuleTagsPage()),
                      );
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
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20 * _scale,
                              color: Colors.blue[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10 * _scale,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don’t have an Account? ",
                        style: TextStyle(fontSize: 15 * _scale),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterPage()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15 * _scale),
                        ),
                      )
                    ],
                  ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  width: size.width * 0.8,
                  child: Row(
                    children: <Widget>[
                      buildDivider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      buildDivider(),
                    ],
                  ),
                ),
                  _signInButton(),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10 * _scale,
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
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.black87,
        height: 1.5,
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
            ),
          ],
        ),
      ),
    );
  }
}
