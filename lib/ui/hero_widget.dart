
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            );
          },
          child: Hero(
            tag: 'heroImage', // Unique tag to identify Hero widget on both screens
            child: Image.asset(
              'assets/images/google-docs.png',
              width: 100, // Thumbnail size
            ),
          ),
        ),
      ),
    );
  }
}

// DetailScreen with the full-size image
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Detail'),
      ),
      body: Center(
        child: Hero(
          tag: 'heroImage',
          child: Image.asset(
            'assets/images/google-docs.png',
            width: 300, // Full-size image
          ),
        ),
      ),
    );
  }
}
