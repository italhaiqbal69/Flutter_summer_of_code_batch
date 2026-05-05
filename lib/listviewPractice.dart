import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listviewpractice extends StatelessWidget {
  const Listviewpractice({super.key});

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
        body: ListView(
          children: [
            // Container(height: 200, width: double.infinity, color: Colors.pink),
            // Container(height: 200, width: double.infinity, color: Colors.blue),
            // Container(height: 200, width: double.infinity, color: Colors.green),
            // Container(height: 200, width: double.infinity, color: Colors.black),
            // Container(height: 200, width: double.infinity, color: Colors.brown),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/download (1).jpg'),
              ),
              title: Text('Talha Iqbal'),
              subtitle: Text('HOw are you? '),
              trailing: Text('9:00'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/download (1).jpg'),
              ),
              title: Text('Talha Iqbal'),
              subtitle: Text('HOw are you? '),
              trailing: Text('9:00'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/download (1).jpg'),
              ),
              title: Text('Talha Iqbal'),
              subtitle: Text('HOw are you? '),
              trailing: Text('9:00'),
            ),
          ],
        ),
      ),
    );
  }
}
