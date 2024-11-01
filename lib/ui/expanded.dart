import 'package:flutter/material.dart';
class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({super.key});

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Expanded Screen'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                  child: Container(
                    color: Colors.pink,
                    height: 100,
                  ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                  height: 100,
                ),
              ),
            ],
          ),


        ],
      ),

    );
  }
}
