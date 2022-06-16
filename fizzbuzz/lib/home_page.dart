// ignore_for_file: deprecated_member_use

import 'package:fizzbuzz/fizzbuzz_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => _HomePageState();
}
  
  class _HomePageState extends State<HomePage> {
    int input = 0;
    TextEditingController inputController = TextEditingController();
    
    @override
    Widget build(BuildContext context) {
      final input = Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20, 30, 20),
        child: TextFormField(
        controller: inputController,
        keyboardType: TextInputType.number,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Max Number',
          contentPadding: EdgeInsets.all(20.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
        ),
        )
      );

      final nextButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FizzBuzzPage(int.parse(inputController.text))));
        },
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        color: Colors.blueAccent,
        child: Text('Show List', style: TextStyle(color: Colors.white, fontSize: 17.0))
      )
      );
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("FizzBuzz Generator",
          style: TextStyle(
            color: Colors.white,
          ),),
        ),
        body: Column(children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 30),
          child: 
          Text("Please enter maximum number",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),)),
          input,
          nextButton
        ],)
      );
    }
  }
  