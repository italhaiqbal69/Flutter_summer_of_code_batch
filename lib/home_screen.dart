import 'package:flutter/material.dart';

class MyFirstAppScreen extends StatelessWidget {
  const MyFirstAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // The pinkish-red color of the AppBar
        backgroundColor: const Color(0xFFE81E63),
        title: const Text(
          'Our First App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: 220,
          height: 220,
          child: Center(
            child: Text(
              'Hello',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          decoration: BoxDecoration(
            // The purple color of the square
            color: Colors.purple,
            // Rounded corners
            borderRadius: BorderRadius.circular(24),
            // Thick black border
            border: Border.all(color: Colors.black, width: 10),
          ),
        ),
      ),
    );
  }
}
