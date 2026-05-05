import 'package:flutter/material.dart';

class ContainerPRactice extends StatelessWidget {
  const ContainerPRactice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 30,
                offset: Offset(30, 50),
              ),
            ],
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [Colors.red, Colors.blue],
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 500,
          width: 500,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
