import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text('Ask me Anything!'),
          ),
        ),
        body: magicball(),
      ),
    ),
  );
}

class magicball extends StatefulWidget {
  @override
  _magicballState createState() => _magicballState();
}

class _magicballState extends State<magicball> {

  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(32.0),
            // backgroundColor: Colors.blue[900],
          ),
          onPressed: (){
            setState(() {
              ballnumber = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$ballnumber.png'),
        ),
      ),
    );
  }
}