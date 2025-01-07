import 'package:flutter/material.dart';


class ConstraintBoxScreen extends StatefulWidget {
  const ConstraintBoxScreen({super.key});

  @override
  State<ConstraintBoxScreen> createState() => _ConstraintBoxScreenState();
}


class _ConstraintBoxScreenState extends State<ConstraintBoxScreen> {
  @override
  Widget build(BuildContext context) {

    // add media Query in this file
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Constraint Box'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: ConstrainedBox(
                constraints: const  BoxConstraints(),
                child: Container(
                  color: Colors.blue.shade100,
                  child: const Column(
                    children: [
                      ListTile(
                        leading: Text('1',
                          style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                        title: Text('Muhammad Hamza',
                          style: TextStyle(
                          fontSize: 20
                        ),
                        ),
                        trailing: Text('Flutter Developer',
                          style: TextStyle(
                            fontSize:20,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text('1',
                          style: TextStyle(
                            fontSize: 20,
                        ),
                        ),
                        title: Text('Muhammad Hamza',
                          style: TextStyle(
                            fontSize: 20
                        ),
                        ),
                        trailing: Text('Flutter Developer',
                          style: TextStyle(
                              fontSize:20,
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

