import 'package:fizzbuzz/fizzbuzz.dart';
import 'package:flutter/material.dart';

class FizzBuzzPage extends StatefulWidget {
  int input = 0;

  FizzBuzzPage(this.input);
  @override
  _FizzBuzzPage createState() => _FizzBuzzPage(input);
}
class _FizzBuzzPage extends State<FizzBuzzPage> {
  int input = 0;
  _FizzBuzzPage(this.input);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FizzBuzz",
        style: TextStyle(
            color: Colors.white,
          )),
      ),
      body: ListView.separated(
        itemCount: input,
        separatorBuilder: (context, index) =>Divider(height: 0.5, color: Colors.grey),
        itemBuilder: (BuildContext context, int position) {
          FizzBuzz fizzbuzz = FizzBuzz();
          return Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 30),
            child: Text(fizzbuzz.getFizzBuzz(position),
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20
          ),));
        },
      ),
    );
  }

}