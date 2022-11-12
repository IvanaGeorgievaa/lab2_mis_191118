import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 87, 185),
      body: Center(
        child: Text(
          'Ivana Georgieva 191118',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}
