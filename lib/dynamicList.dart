import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dynamiclist extends StatefulWidget {
  const Dynamiclist({super.key});

  @override
  State<Dynamiclist> createState() => _DynamiclistState();
}

class _DynamiclistState extends State<Dynamiclist> {
  List<Map> chats = [
    {
      'name': 'Ali',
      'message': 'Whats the class time?',
      'Time': '2:00',
      'image': 'assets/download (1).jpg',
    },

    {
      'name': 'Umair',
      'message': 'Sir g Sa ba kao ?',
      'Time': '12:00',
      'image': 'assets/download (1).jpg',
    },
    {
      'name': 'Raess',
      'message': 'Application for late arrival',
      'Time': '9:00',
      'image': 'assets/download (1).jpg',
    },
    {
      'name': 'JD vance',
      'message':
          'I have  visit your class today there were two small little babies asking questions from adults!',
      'Time': '2:00',
      'image': 'assets/download (1).jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Watsapp',
            style: GoogleFonts.inter(fontSize: 24, color: Colors.white),
          ),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat, color: Colors.white)),
              Tab(icon: Icon(Icons.star, color: Colors.white)),
              Tab(icon: Icon(Icons.call, color: Colors.white)),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(chats[index]['image'].toString()),
              ),
              title: Text(chats[index]['name'].toString()),
              subtitle: Text(chats[index]['message'].toString()),
              trailing: Text(chats[index]['Time'].toString()),
            );
          },
        ),
      ),
    );
  }
}
