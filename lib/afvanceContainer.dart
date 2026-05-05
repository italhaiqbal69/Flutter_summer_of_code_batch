import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvanceContainer extends StatelessWidget {
  const AdvanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 330,

          decoration: BoxDecoration(
            // image: DecorationImage(image: AssetImage('assets/jorden.png')),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(200),
              topRight: Radius.circular(200),
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
            ),
            gradient: LinearGradient(
              colors: [Colors.cyanAccent, Colors.blue],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(30, 50),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              Image.asset('assets/jorden.png'),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Jordan One',
                          style: GoogleFonts.pacifico(fontSize: 24),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              // width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('EUJE'),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 25,
                              // width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Black/White'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                        ),
                        SizedBox(height: 50),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'PRICE',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    '\$69.99',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 200,

                              decoration: BoxDecoration(
                                color: Colors.cyanAccent.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Add To Cart',
                                  style: GoogleFonts.pacifico(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
