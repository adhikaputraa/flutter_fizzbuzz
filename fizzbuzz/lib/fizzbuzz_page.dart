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
      body: ListView.builder(
        itemCount: input,
        itemBuilder: (BuildContext context, int position) {
          FizzBuzz fizzbuzz = FizzBuzz();
          return Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
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