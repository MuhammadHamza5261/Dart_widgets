import 'package:dartwidgetspractise/ui/constraint_box.dart';
import 'package:dartwidgetspractise/ui/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(
      MyApp());
  // ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: ConstraintBoxScreen(),
    );
  }
}

