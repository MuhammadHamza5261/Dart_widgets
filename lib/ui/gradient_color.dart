import 'package:flutter/material.dart';

class GradientColor extends StatefulWidget {
  const GradientColor({super.key});

  @override
  State<GradientColor> createState() => _GradientColorState();
}

class _GradientColorState extends State<GradientColor> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gradient App bar',style: TextStyle(
          color: Colors.white,
        ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.purple,Colors.blue],
            ),
          ),
        ),

      ),
    );
  }
}
