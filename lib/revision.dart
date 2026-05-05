// import 'package:flutter/material.dart';

// class Revision extends StatelessWidget {
//   const Revision({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: GestureDetector(
//                 onTap: () {

//                 },
//                 child: Container(
//                   height: 400,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.pink,
//                     borderRadius: BorderRadius.circular(60),
//                     border: Border.all(color: Colors.purple, width: 5),
//                     boxShadow: [
//                       BoxShadow(blurRadius: 30, color: Colors.purple),
//                     ],
//                     gradient: LinearGradient(
//                       colors: [Colors.red, Colors.blue],
//                       begin: AlignmentGeometry.topCenter,
//                       end: AlignmentGeometry.bottomRight,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ListView.builder

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nacttac_summerofcode3/favrt_list_view.dart';
import 'package:nacttac_summerofcode3/login_screen.dart';
import 'package:nacttac_summerofcode3/row_Column.dart';

class Revision extends StatefulWidget {
  const Revision({super.key});

  @override
  State<Revision> createState() => _RevisionState();
}

class _RevisionState extends State<Revision> {
  int currentIndex = 0;

  List<Widget> screen = [RowColumn(), LoginScreen(), FavrtListView()];
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
  ];

  List<Color> color = [
    Colors.pink,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.brown,
    Colors.cyan,
    Colors.purple,
    Colors.amber,
    Colors.grey,
    Colors.lightGreen,
    Colors.green,
    Colors.teal,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Color(0xffd193f5),
    Colors.blueGrey,
    Colors.deepOrange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text('Drawer')),
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        currentIndex: currentIndex,

        selectedIconTheme: IconThemeData(color: Colors.red),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Dil'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       Container(
      //         width: double.infinity,
      //         height: 240,
      //         decoration: BoxDecoration(
      //           color: const Color.fromARGB(255, 139, 107, 224),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text('Home'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => RowColumn()),
      //           );
      //         },
      //       ),
      //       ListTile(leading: Icon(Icons.favorite), title: Text('Dil')),
      //       ListTile(leading: Icon(Icons.person), title: Text('Profile')),
      //     ],
      //   ),
      //   // child: Column(
      //   //   children: [
      //   // Padding(
      //   //   padding: EdgeInsets.only(top: 10),
      //   //   child: Container(
      //   //     width: double.infinity,
      //   //     height: 240,
      //   //     decoration: BoxDecoration(
      //   //       color: const Color.fromARGB(255, 139, 107, 224),
      //   //     ),
      //   //   ),
      //   // ),
      //   //     // ListView(children: [ListTile(title: Text('Home'))]),
      //   //   ],
      //   // ),
      // ),
    );
  }
}
