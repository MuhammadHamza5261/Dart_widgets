import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animated Container'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final random = Random();
          height = random.nextInt(300).toDouble();
          setState(() {

          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Center(
          child: AnimatedContainer(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            duration: const Duration(seconds: 3),

          ),
        ),
      ),
    );
  }
}
