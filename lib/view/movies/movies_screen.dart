import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoviesScreen'),
      ),
      body: const Center(
        child: Text('MoviesScreen'),
      ),
    );
  }
}
