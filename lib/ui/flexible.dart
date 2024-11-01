import 'package:flutter/material.dart';
class FlexibleScreen extends StatefulWidget {
  const FlexibleScreen({super.key});

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flexible Widget'),
      ),
      body: Column(
        children: [
         Row(
           children: [
             Flexible(
               flex: 3,

                 child: Container(
                   color: Colors.redAccent,
                   height: 100,
                 ),
             ),
             Flexible(
               flex: 2,

                 child: Container(
                   color: Colors.green,
                   height: 100,
                 )
             ),
             Flexible(
               flex: 2,
                 child: Container(
                   color: Colors.yellow,
                   height: 100,
                 )
             ),

           ],
         ),

        ],
      ),
    );

  }
}
