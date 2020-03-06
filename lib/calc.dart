import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:calculator/about.dart';


class Calculator extends StatefulWidget {
  @override
  _Calculator createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  bool warnasiang = true;
  
  void _modalsheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return Container(
            child: AboutMeApp(),
            padding: EdgeInsets.all(5.0),
          );
        });
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1d4d4f),
          title: Text('Calculator'),
          centerTitle: true,
          leading: SizedBox(
            width: 50,
            child: Padding(
            padding: EdgeInsets.only(left: 1.0),
            child: GestureDetector(
              onTap: () => _modalsheet(),
              child: ButtonBar(
                children: <Widget>[
                  Text('AboutMe'),
                ],
              ),
            ),
          ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => _gantiWarna(),
              child: mode,
              padding: EdgeInsets.fromLTRB(0.0, 0, 10.0, 0),
            ),
          ],
        ),
        body: Container(
          child: SimpleCalculator(
            theme: calc,
          ),
        ),
      ),
    );
  }

///////////////////// FUNGSI UNTUK GANTI MODE \\\\\\\\\\\\\\\\\\\\\

  _gantiWarna() {
    if (warnasiang) {
      warnasiang = false;
      setState(() {
        calc = malem;
        aboutMeColor = Color(0xff3a3535);
        aboutMeCardColor = Color(0xff233030);
        aboutMeTextColor = Color(0xfff4f4f4);
        mode = daylightMode;
      });
    } else {
      warnasiang = true;
      setState(() {
        calc = siang;
        aboutMeColor = Colors.white;
        aboutMeCardColor = Colors.white;
        aboutMeTextColor = Colors.black;
        mode = nightMode;
      });
    }
  }

//////////////////////////// BUAT GANTI WARNA DOANG \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  CalculatorThemeData calc = CalculatorThemeData(
    borderColor: Colors.white24,
    borderWidth: 2,
    displayColor: Colors.white70,
    displayStyle: const TextStyle(fontSize: 80, color: Colors.black),
    expressionColor: Color(0xff357376),
    expressionStyle: const TextStyle(fontSize: 20, color: Color(0xffe5dfdf)),
    operatorColor: Colors.white,
    operatorStyle: const TextStyle(fontSize: 50, color: Color(0xff6ba8a9)),
    commandColor: Colors.white,
    commandStyle: const TextStyle(fontSize: 30, color: Color(0xff6ba8a9)),
    numColor: Colors.white,
    numStyle: const TextStyle(fontSize: 50, color: Colors.black),
  );

  CalculatorThemeData siang = CalculatorThemeData(
    borderColor: Colors.white24,
    borderWidth: 2,
    displayColor: Colors.white70,
    displayStyle: const TextStyle(fontSize: 80, color: Colors.black),
    expressionColor: Color(0xff357376),
    expressionStyle: const TextStyle(fontSize: 20, color: Color(0xffe5dfdf)),
    operatorColor: Colors.white,
    operatorStyle: const TextStyle(fontSize: 50, color: Color(0xff6ba8a9)),
    commandColor: Colors.white,
    commandStyle: const TextStyle(fontSize: 30, color: Color(0xff6ba8a9)),
    numColor: Colors.white,
    numStyle: const TextStyle(fontSize: 50, color: Colors.black),
  );

  CalculatorThemeData malem = CalculatorThemeData(
    borderColor: Color(0xff3a3535),
    borderWidth: 2,
    displayColor: Color(0xff3a3535),
    displayStyle: const TextStyle(fontSize: 80, color: Color(0xfff4f4f4)),
    expressionColor: Color(0xff233030),
    expressionStyle: const TextStyle(fontSize: 20, color: Color(0xfff4f4f4)),
    operatorColor: Color(0xff3a3535),
    operatorStyle: const TextStyle(fontSize: 50, color: Color(0xfff4f4f4)),
    commandColor: Color(0xff3a3535),
    commandStyle: const TextStyle(fontSize: 30, color: Color(0xfff4f4f4)),
    numColor: Color(0xff3a3535),
    numStyle: const TextStyle(fontSize: 50, color: Color(0xffff7315)),
  );

  Text mode = Text(
    'Night Mode',
    style: TextStyle(color: Colors.white),
  );
  Text nightMode = Text(
    'Night Mode',
    style: TextStyle(color: Colors.white),
  );
  Text daylightMode = Text(
    'Daylight Mode',
    style: TextStyle(color: Colors.white),
  );
}

////////////// GANTI WARNA DI ABOUT ME \\\\\\\\\\\\\\\\\\\
Color aboutMeColor = Colors.white;
Color aboutMeCardColor = Colors.white;
Color aboutMeTextColor = Colors.black;
