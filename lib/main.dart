import 'package:dartwidgetspractise/ui/animated_container.dart';
import 'package:dartwidgetspractise/ui/country_code_class.dart';
import 'package:dartwidgetspractise/ui/custom_scroll_view.dart';
import 'package:dartwidgetspractise/ui/expansion_tile.dart';
import 'package:dartwidgetspractise/ui/f.dart';
import 'package:dartwidgetspractise/ui/flutter_barcode_reader.dart';
import 'package:dartwidgetspractise/ui/flutter_qr.dart';
import 'package:dartwidgetspractise/ui/future_builder.dart';
import 'package:dartwidgetspractise/ui/future_builder_list.dart';
import 'package:dartwidgetspractise/ui/image_loading_builder.dart';
import 'package:dartwidgetspractise/ui/reorder_list_view.dart';
import 'package:dartwidgetspractise/ui/sliver_app_bar.dart';
import 'package:dartwidgetspractise/ui/stylish_bottom_navbar.dart';
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
      home: FutureBuilderList(),
    );
  }
}

