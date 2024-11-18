import 'package:flutter/material.dart';

class StackPrac extends StatefulWidget {
  const StackPrac({super.key});

  @override
  State<StackPrac> createState() => _StackPracState();
}

class _StackPracState extends State<StackPrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stack Screen'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 100),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Text("Hello, Flutter!"),
        ),
      )

    );
  }
}
