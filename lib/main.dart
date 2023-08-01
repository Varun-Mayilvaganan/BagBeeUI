//import 'package:beeui1/components/voucher_card.dart';
import 'package:beeui1/page/homepage.dart';
//import 'package:beeui1/page/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      
    );
  }
}