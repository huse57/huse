import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Application'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Developed by: Jose Camaso',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                '3.1 BSIT',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}