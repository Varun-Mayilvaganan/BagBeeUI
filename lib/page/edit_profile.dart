import 'package:beeui1/page/homepage.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F3C7E),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white70,
          ),
          onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()))
          },
        ),
        title: const Text(
          "Back To Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            
            onPressed: () {
              // Implement any action when the menu icon is pressed
              // For example, you can open a menu drawer or show a popup menu
            },
            icon: Image.asset('assets/images/menu.png',color: Colors.white70,),
            iconSize: 20,
          ),
        ],
      ),
      backgroundColor: Color(0xFFFBEAEB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40.0),
                Image.asset('assets/images/teamwork.png', height: 100),
                const SizedBox(height: 20.0),
                name(),
                const SizedBox(height: 20.0),
                nickname(),
                const SizedBox(height: 20.0),
                email(),
                const SizedBox(height: 20.0),
                Dob(),
                const SizedBox(height: 20.0),
                Gender(),
                const SizedBox(height: 40.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                            colors: [Colors.blue, Colors.purple],
                          )),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(5),
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () => {},
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget name() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Enter Your Name',
          prefixIcon: Icon(Icons.person),
          prefixIconColor: Color(0xFF2F3C7E),
          //suffixIcon: Icon(Icons.clear,),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget nickname() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Nick Name',
          prefixIcon: Icon(Icons.emoji_people),
          prefixIconColor: Color(0xFF2F3C7E),
          //suffixIcon: Icon(Icons.clear),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget email() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Enter your mail-id',
          hintText: 'example@gmail.com',
          prefixIcon: Icon(Icons.mail),
          prefixIconColor: Color(0xFF2F3C7E),
          //suffixIcon: Icon(Icons.clear),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget Dob() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Date of Birth',
          hintText: 'day-Month-Year',
          prefixIcon: Icon(Icons.edit_calendar),
          prefixIconColor:Color(0xFF2F3C7E),
          suffixIcon: Icon(
            Icons.arrow_drop_down_circle_rounded,
            color: Color(0xFF2F3C7E),
          ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget Gender() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Gender',
          prefixIcon: Icon(Icons.person_add_alt),
          prefixIconColor: Color(0xFF2F3C7E),
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            color: Color(0xFF2F3C7E),
          ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );