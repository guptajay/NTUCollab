import 'package:flutter/material.dart';
import 'package:ntucollab/screens/home.dart';
import 'package:ntucollab/services/auth.dart';
import 'package:ntucollab/widgets/rounded_input.dart';
import 'package:ntucollab/widgets/rounded_password.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50 * _scale,
                  ),
                  Icon(
                    Icons.supervised_user_circle,
                    color: Colors.blueGrey,
                    size: 200
                  ),
                  SizedBox(
                    height: 10 * _scale,
                  ),
                  Text("NTUCollab",
                      style: TextStyle(
                          fontSize: 40.0 * _scale,
                          fontWeight: FontWeight.bold
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Registration",
                      style: TextStyle(
                        fontSize: 25.0 * _scale,
                      )),
                  SizedBox(
                    height: 60 * _scale,
                  ),
                  RoundedInputField(
                    hintText: "Full Name",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Email",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20 * _scale,
                  ),
              OutlineButton(
                splashColor: Colors.grey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
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
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 20 * _scale,
                            color: Colors.blue[600],
                          ),
                        ),
                    ],
                  ),
                ),
              )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
