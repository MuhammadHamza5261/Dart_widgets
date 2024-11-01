import 'package:flutter/material.dart';

class CustomScrollScreen extends StatefulWidget {
  const CustomScrollScreen({super.key});

  @override
  State<CustomScrollScreen> createState() => _CustomScrollScreenState();
}

class _CustomScrollScreenState extends State<CustomScrollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar
          SliverAppBar(
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('SliverAppBar'),
              background: Image.asset(
                'assets/images/bank.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('List Item #$index'),
                );
              },
              childCount: 10, // Total number of items
            ),
          ),

          // SliverGrid
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: Colors.teal[100 * (index % 9)],
                  child: Center(
                    child: Text('Grid Item #$index'),
                  ),
                );
              },
              childCount: 6, // Total number of grid items
            ),
          ),
        ],
      ),
    );
  }
}
