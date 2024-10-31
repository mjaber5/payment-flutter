import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hello World'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
