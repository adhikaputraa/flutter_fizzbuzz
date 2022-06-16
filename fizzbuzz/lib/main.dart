import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomePage.tag:(context) => HomePage()
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FizzBuzz Generator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage(),
      routes: routes,
    );
  }}