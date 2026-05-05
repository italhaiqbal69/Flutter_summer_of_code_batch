import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImagePractice extends StatelessWidget {
  const ImagePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.withOpacity(0.9),
        title: Text(
          'The Amazing Spiderman',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/download (1).jpg'),

            Text(
              'The Amazing Spider Man',
              textAlign: TextAlign.center,
              style: GoogleFonts.tangerine(
                fontSize: 70,
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),

            Image.asset('assets/flower.png', height: 300),
          ],
        ),
      ),
    );
  }
}
