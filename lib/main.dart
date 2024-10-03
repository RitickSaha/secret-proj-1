import 'package:flutter/material.dart';
// import 'package:lemmehandle/Businessdetails.dart';
// import 'package:lemmehandle/home_dash.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     home: LoginAuth(),
      // home: Businessdetails(),
    );
  }
}