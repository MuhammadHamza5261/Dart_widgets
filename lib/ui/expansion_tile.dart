import 'package:flutter/material.dart';

class ExpansionTileScreen extends StatefulWidget {
  const ExpansionTileScreen({super.key});

  @override
  State<ExpansionTileScreen> createState() => _ExpansionTileScreenState();
}

class _ExpansionTileScreenState extends State<ExpansionTileScreen> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: const Text('Expansion Tile'),
      ),
      body: const Column(
        children: [
          ExpansionTile(
            title: Text('Animal',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              ListTile(
                title: Text('Cat',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                title: Text('Parrot',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                title: Text('Elephant',style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                title: Text('Bear',style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              'Flutter',
                 style: TextStyle(
                  fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              ListTile(
                title: Text('Dart',style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                title: Text('Git',style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                title: Text('Rest Apis',style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                title: Text('Firebase',style: TextStyle(fontSize: 18),),
              ),
            ],

          ),
        ],
      ),
    );
  }
}
