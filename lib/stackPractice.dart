import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nacttac_summerofcode3/gridviewBuilder.dart';

class Stackpractice extends StatefulWidget {
  const Stackpractice({super.key});

  @override
  State<Stackpractice> createState() => _StackpracticeState();
}

class _StackpracticeState extends State<Stackpractice> {
  List<Map> dishes = [
    {
      'name': 'Biryani',
      'price': '350',
      'image': 'assets/biryani-removebg-preview.png',
    },
    {
      'name': 'Fish',
      'price': '350',
      'image': 'assets/fish-removebg-preview.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: 400),
              Container(
                height: 250,

                decoration: BoxDecoration(
                  color: Colors.orange,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 30,
                      spreadRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 60,
                child: Image.asset(
                  'assets/fish-removebg-preview.png',
                  height: 300,
                ),
              ),
            ],
          ),

          Text(
            " Main Menu",
            style: GoogleFonts.aBeeZee(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: dishes.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SizedBox(
                    height: 250,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(height: 20),
                        Positioned(
                          top: 20,
                          left: 12,
                          right: 12,
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              dishes[index]['name'],
                              style: GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        // Image (centered or at top)
                        Positioned(
                          top: -40,
                          left: 0,
                          right: 0,
                          child: Image.asset(
                            dishes[index]['image'].toString(),
                            height: 140,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 130,
                          left: 60,
                          child: Text(
                            "Rs. ${dishes[index]['price']}",
                            style: GoogleFonts.pacifico(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
