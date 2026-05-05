import 'package:flutter/material.dart';

class Paddingpractice extends StatelessWidget {
  const Paddingpractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.withOpacity(0.9),
        title: Text('Padding Practice', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(height: 200, width: 200, color: Colors.black),
          Container(height: 200, width: 200, color: Colors.blue),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(height: 200, width: 200, color: Colors.green),
          ),
          Container(height: 200, width: 200, color: Colors.red),
        ],
      ),
    );
  }
}
