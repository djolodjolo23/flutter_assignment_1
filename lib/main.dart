import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'helper.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment 1',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LayoutPage());
  }
}

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Card'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/pp.jpg'),
                radius: 95.0,
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  'Djordje Dimitrov',
                  style: GoogleFonts.dancingScript(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 189, 227, 245),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildIconRow(
                            Icons.school, 'Student at Linneuniversitetet.',
                            isBold: true),
                        buildIconRow(
                            Icons.email, 'Email: dd222im@student.lnu.se'),
                        buildIconRow(Icons.phone, 'Phone: 0769980908'),
                        buildIconRow(Icons.web, 'Web: https://lnu.se'),
                        buildIconRow(Icons.code, 'Github: djolodjolo23')
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
