import 'package:flutter/material.dart';

class ReorderListView extends StatefulWidget {
  const ReorderListView({super.key});

  @override
  State<ReorderListView> createState() => _ReorderListViewState();
}

class _ReorderListViewState extends State<ReorderListView> {
  final List<String> _fruitsList = [
    'Apple',
    'Mango',
    'Banana',
    'Peach',
    'Watermelon',
    'Grapes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Reorder-able List'),
      ),
      body: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            oldIndex = _fruitsList.length - 1 - oldIndex;
            newIndex = _fruitsList.length - 1 - newIndex;
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final item = _fruitsList.removeAt(oldIndex);
            _fruitsList.insert(newIndex, item);
          });
        },
        children: [
          for (final fruit in _fruitsList.reversed)
            ListTile(
              key: ValueKey(fruit),
              title: Text(fruit),
              leading: const Icon(Icons.drag_handle),
            ),
        ],
      ),
    );
  }
}
