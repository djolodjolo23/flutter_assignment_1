import 'package:flutter/material.dart';

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
      body: const Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/profile pic.png'),
                width: 200.0,
              ),
              SizedBox(height: 16.0),
              Text(
                'Djordje Dimitrov',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [Text('E-mail'), Text('Phone'), Text('Web:')],
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
