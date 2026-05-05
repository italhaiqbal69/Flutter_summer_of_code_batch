import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nacttac_summerofcode3/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterproviderApp extends StatefulWidget {
  const CounterproviderApp({super.key});

  @override
  State<CounterproviderApp> createState() => _CounterproviderAppState();
}

class _CounterproviderAppState extends State<CounterproviderApp> {
  @override
  void initState() {
    super.initState();
    Provider.of<CounterProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    // final counterProvider = Provider.of<CounterProvider>(
    //   context,
    //   listen: false,
    // );
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
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, obj, child) {
            return GestureDetector(
              onTap: () {
                obj.startAutoColorCycle();
              },
              child: Container(height: 300, width: 300, color: obj.color),
            );
          },
        ),
      ),

      floatingActionButton: Consumer<CounterProvider>(
        builder: (context, obj, child) {
          return FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add, color: Colors.white),
            backgroundColor: Colors.green,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    Provider.of<CounterProvider>(context, listen: false).stopAutoColorCycle();
    super.dispose();
  }
}
