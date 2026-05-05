import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],

            begin: AlignmentGeometry.topRight,
            end: AlignmentGeometry.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Text(
                'JobsLy',
                style: GoogleFonts.montez(color: Colors.white, fontSize: 50),
              ),
              SizedBox(height: 50),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back',
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Enter your Details Below',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 60,
                            left: 30,
                            right: 30,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('UserName'),
                              alignLabelWithHint: true,
                              hintText: 'Enter your username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                            left: 30,
                            right: 30,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off),
                              label: Text('Password'),
                              alignLabelWithHint: true,
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 60,
                            right: 60,
                            top: 50,
                          ),
                          child: InkWell(
                            onTap: () {
                              print('Button is preased');
                            },

                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                  colors: [Colors.purple, Colors.blue],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'LogIn',
                                  style: GoogleFonts.pacifico(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
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
