import 'package:flutter/material.dart';
import 'package:calculator/calc.dart';
import 'package:calculator/pinlogin.dart';
import 'package:calculator/transition.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String txt;

  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment(0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/calculator-logo.png'),
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: TextField(
                        cursorColor: Color(0xff35737),
                        keyboardType: TextInputType.numberWithOptions(),
                        onChanged: (String hasil) {
                          txt = hasil;
                          setState(() {
                            if (hasil == "2020") {
                              Navigator.pushAndRemoveUntil(
                                context,
                                SizeRoute(page: Calculator()),
                                (Route<dynamic> newRoute) => false,
                              );
                            }
                          });
                        }),
                  ),
                  SizedBox.fromSize(
                    size: Size(40, 40), // button width and height
                    child: ClipOval(
                      child: Material(
                        color: Color(0xff357378), // button color
                        child: InkWell(
                          splashColor: Colors.green, // splash color
                          onTap: () {
                            if (txt == "2020")
                              Navigator.pushAndRemoveUntil(
                                context,
                                SizeRoute(page: Calculator()),
                                (Route<dynamic> newRoute) => false,
                              );
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.arrow_right), // text
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text('use another Method'),
                onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        RotationRoute(page: PinLoginPage()),
                        (Route<dynamic> newRoute) => false,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings })
    : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child){
    if (settings.name == '/')
      return child;
    return new FadeTransition(opacity: animation, child:child);
  }
}