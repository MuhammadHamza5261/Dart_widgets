import 'package:flutter/material.dart';

class WrapScreen extends StatefulWidget {
  const WrapScreen({super.key});

  @override
  State<WrapScreen> createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {

  @override
  Widget build(BuildContext context) {

    //add media Query
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Wrap Widget'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 3.0,
          children: [
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade200,
                  child: const Text('F'),
              ),
              label: const Text('Flutter'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade200,
                  child: const Text('R')),
              label: const Text('React Native'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade200,
                  child: const Text('C')),
              label: const Text('C Sharp'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade200,
                  child: const Text('X')),
              label: const Text('Android Developer'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade200,
                  child: const Text('X')),
              label: const Text('Android Developer'),
            ),
          ],
        ),
      ),
    );
  }
}
