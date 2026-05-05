import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Row and Column', style: TextStyle(color: Colors.white)),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(height: 80, width: double.infinity, color: Colors.pink),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 100, width: 100, color: Colors.blue),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(height: 100, width: 100, color: Colors.yellow),
              ),
              Container(height: 100, width: 100, color: Colors.purple),
            ],
          ),
          Container(height: 80, width: double.infinity, color: Colors.green),
        ],
      ),
    );
  }
}
