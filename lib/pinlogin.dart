import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:calculator/calc.dart';
import 'package:calculator/login.dart';
import 'package:calculator/transition.dart';

class PinLoginPage extends StatefulWidget {
  @override
  _PinLoginPage createState() => _PinLoginPage();
}

class _PinLoginPage extends State<PinLoginPage> {
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/calculator-logo.png'),
                    height: 80.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Enter your pin'),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: PinPut(
                      isTextObscure: true,
                      clearButtonIcon: Icon(
                        Icons.backspace,
                        size: 30,
                        color: Color(0xff357378),
                      ),
                      onSubmit: (String txt) {
                        if (txt == "2020")
                          Navigator.pushAndRemoveUntil(
                            context,
                            ScaleRoute(page: Calculator()),
                            (Route<dynamic> newRoute) => false,
                          );
                      },
                      fieldsCount: 4,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Text('or use another method'),
                    onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      RotationRoute(page: LoginPage()),
                      (Route<dynamic> newRoute) => false,
                    ),
                  ),
                ],
              ),
            )),
      )),
    );
  }
}
