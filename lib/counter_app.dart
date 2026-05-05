import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int burhii = 0;

  void increment() {
    burhii++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter App',
          style: GoogleFonts.pacifico(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text(
          burhii.toString(),
          style: GoogleFonts.montez(
            fontSize: 50,
            fontWeight: FontWeight.w900,
            color: Colors.pink,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
          print(burhii);
          setState(() {});
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
