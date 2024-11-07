import 'package:dartwidgetspractise/screen_design/screen_one.dart';
import 'package:dartwidgetspractise/ui/compressed_image.dart';
import 'package:dartwidgetspractise/ui/f.dart';
import 'package:dartwidgetspractise/ui/full_screen_image.dart';
import 'package:dartwidgetspractise/ui/gradient_color.dart';
import 'package:dartwidgetspractise/ui/hero_widget.dart';
import 'package:dartwidgetspractise/ui/listneble_two.dart';
import 'package:dartwidgetspractise/ui/stack.dart';
import 'package:dartwidgetspractise/ui/stylish_bottom_navbar.dart';
import 'package:dartwidgetspractise/ui/height_with_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: StackPrac(),
    );
  }
}

