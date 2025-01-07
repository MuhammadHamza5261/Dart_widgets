import 'package:dartwidgetspractise/screen_design/screen_one.dart';
import 'package:dartwidgetspractise/ui/animated_container.dart';
import 'package:dartwidgetspractise/ui/bottom_sheet.dart';
import 'package:dartwidgetspractise/ui/compressed_image.dart';
import 'package:dartwidgetspractise/ui/constraint_box.dart';
import 'package:dartwidgetspractise/ui/expansion_tile.dart';
import 'package:dartwidgetspractise/ui/f.dart';
import 'package:dartwidgetspractise/ui/flexible.dart';
import 'package:dartwidgetspractise/ui/full_screen_image.dart';
import 'package:dartwidgetspractise/ui/gradient_color.dart';
import 'package:dartwidgetspractise/ui/hero_widget.dart';
import 'package:dartwidgetspractise/ui/listneble_two.dart';
import 'package:dartwidgetspractise/ui/reorder_list_view.dart';
import 'package:dartwidgetspractise/ui/rotatable_overlay.dart';
import 'package:dartwidgetspractise/ui/stack.dart';
import 'package:dartwidgetspractise/ui/stack_screen.dart';
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
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackScreenTwo(),
    );
  }
}

