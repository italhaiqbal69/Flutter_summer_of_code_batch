import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
  List<Color> myColors = [Colors.red, Colors.blue, Colors.green, Colors.orange];
  List<Color> procolors = [
    Colors.yellow,
    Colors.red,
    Colors.white,
    Colors.blue,
  ];
  List<Map> products = [
    {
      'name': 'Shampoo',
      'price': '500',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMgHokVlDLZ1jsTO4xJBYUmGBnhtsfRND9mA&s',
    },

    {
      'name': 'Perfume',
      'price': '5000',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThr5OL0D04iSQ8dVuQQQRXH9-oZ8Dc0qDjng&s',
    },
    {
      'name': 'Moistriser',
      'price': '1000',
      'image':
          'https://jenpharm.com/cdn/shop/files/1_f114751a-4670-4c90-ad5d-dcdbc14de253_grande.png?v=1767271488',
    },
    {
      'name': 'Shirt',
      'price': '2000',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6jKqtYbThri5ibzOyKBPDEWVxjpcUhWV4_g&s',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daraz',
          style: GoogleFonts.inter(fontSize: 24, color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 6,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: myColors[index],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(products[index]['image']),
                  Text(
                    products[index]['name'],
                    style: GoogleFonts.pacifico(
                      fontSize: 24,
                      color: procolors[index],
                    ),
                  ),
                  Text(
                    products[index]['price'],
                    style: GoogleFonts.pacifico(fontSize: 24),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
