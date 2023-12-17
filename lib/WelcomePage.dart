
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomePage extends StatelessWidget {
  final String name;
  final String email;

  WelcomePage({required this.name, required this.email});

  // WelcomePage({ required this.name, this.number, this.email ,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Name : ${name}'),
          // Int('Contact Number : ${number}'),
          Text('Email : ${email}'),
        ],

      ),
    );
  }
}
