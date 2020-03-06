import 'package:flutter/material.dart';
import 'package:calculator/calc.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Card(
        color: aboutMeColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        elevation: 10,
        child: Container(
          alignment: Alignment(0, 0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/DSC08734.JPG',
                    height: 200,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'M Faarih ',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2.0,
                          color: aboutMeTextColor,
                        ),
                      ),
                      Text(
                        'Ihsan',
                        style: TextStyle(
                            color: aboutMeTextColor,
                            fontSize: 20,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    'Hobi : main',
                    style: TextStyle(
                      color: aboutMeTextColor,
                      letterSpacing: 2.0,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 180,
                        child: Card(
                          color: aboutMeCardColor,
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset('assets/linkedin-logo.png',
                                    height: 20.0),
                                SizedBox(width: 5),
                                Text(
                                  'Muhamad Faarih Ihsan',
                                  style: TextStyle(
                                    color: aboutMeTextColor,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () => launch('https://gmail.com/'),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Card(
                          color: aboutMeCardColor,
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  'assets/instagram-logo.png',
                                  height: 20.0,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'faarihsan',
                                  style: TextStyle(
                                    color: aboutMeTextColor,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () =>
                                launch('https://instagram.com/faarihihsan/'),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Card(
                          color: aboutMeCardColor,
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  'assets/twitter-logo.png',
                                  height: 20.0,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'faarihsan',
                                  style: TextStyle(
                                    color: aboutMeTextColor,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () => launch('https://twitter.com/mfihsan'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
