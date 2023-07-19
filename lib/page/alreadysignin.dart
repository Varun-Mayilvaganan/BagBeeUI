import 'package:flutter/material.dart';
import 'package:beeui1/components/my_button.dart';
class AlreadySignin extends StatelessWidget {
  const AlreadySignin({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Align(
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/beebag.webp'),
                  iconSize: 120,
                  padding: EdgeInsets.only(right: 30),
                ),
                Center(
                  child: Text(
                    "The first ever",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: 5), // Add a space between the two Text widgets
                Center(
                  child: Text(
                    "Smart Reusable Bag",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w800,
                      fontSize: 35,
                    ),
                  ),
                ),
                SizedBox(height:2),
                Image.asset('assets/images/Welcome-Screen-Graphic.jpg',
                height:430,
                ),
                  SizedBox(height: 5),
                MyButton(
                  onTap: ()=>{},
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    const SizedBox(width:4),
                    Text(
                      'Log in',
                    style: TextStyle(
                      color: Color(0xFFFC8019),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w800,
                    ),),

                  ],
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
