import 'package:flutter/material.dart';

class Listpractice extends StatefulWidget {
  const Listpractice({super.key});

  @override
  State<Listpractice> createState() => _ListpracticeState();
}

class _ListpracticeState extends State<Listpractice> {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.brown,
  ];

  List<String> path = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: numbers.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // color: Colors.pink,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
