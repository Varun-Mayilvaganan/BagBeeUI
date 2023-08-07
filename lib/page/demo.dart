import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:Column(
          children: [
            Text("hello",
              style: TextStyle(color: Colors.black),
              ),
              Text('varun')],
        ),
      ),
      body:Row(
       // mainAxisAlignment: MainAxisAlignment.start,
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            color: Colors.amberAccent,
          ),
          Container(
            height: 30,
            width: 30,
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}