import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {

  final VoidCallback? onTap;
  const MyButton({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal:25),
        decoration: BoxDecoration(
            color: Color(0xFFFC8019),
        borderRadius: BorderRadius.circular(20)),
        child:const Center(
          child: Text(
            "Sign up",
            style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),

          ),

        ),
      ),
    );
  }
}
