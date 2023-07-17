import 'package:flutter/material.dart';
import 'package:beeui1/page/edit_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // This line removes the "Debug" banner
      home: Scaffold(
        backgroundColor:Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.amber[700],
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black54,),
            onPressed: () => {},
          ),
          title: Text("Back To Home",
          style: TextStyle(
            color: Colors.black,
          ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu,color: Colors.black54,),
              onPressed: () {
                // Implement any action when the menu icon is pressed
                // For example, you can open a menu drawer or show a popup menu
              },
            ),
          ],
        ),
        body: Container(
          child: EditProfile(),
          ),
        ),
      );

  }
}
