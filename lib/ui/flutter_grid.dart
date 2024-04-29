import 'package:dartwidgetspractise/main.dart';
import 'package:flutter/material.dart';
class FlutterGrid extends StatelessWidget {
  const FlutterGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FlutterGridSTF(),
    );
  }
}
class FlutterGridSTF extends StatefulWidget {
  const FlutterGridSTF({Key? key}) : super(key: key);

  @override
  State<FlutterGridSTF> createState() => _FlutterGridSTFState();
}

class _FlutterGridSTFState extends State<FlutterGridSTF> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns in the grid
              crossAxisSpacing: 10.0, // Spacing between each column
              mainAxisSpacing: 10.0, // Spacing between each row
            ),
            children: <Widget>[
              // Widgets to be placed in the grid
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.purple,
              ),
              // Add more widgets as needed
            ],
          )


        ],
      ),
    );
  }
}

