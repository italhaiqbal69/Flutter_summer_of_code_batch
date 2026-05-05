import 'package:flutter/material.dart';

class Expandedflexible extends StatelessWidget {
  const Expandedflexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expanded and Flexible',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(height: 100, width: 400, color: Colors.green),
          ),
          Expanded(
            flex: 3,
            child: Container(height: 100, width: 100, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
