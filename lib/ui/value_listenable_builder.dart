import 'package:flutter/material.dart';
class ValueListenableScreen extends StatefulWidget {
  const ValueListenableScreen({super.key});

  @override
  State<ValueListenableScreen> createState() => _ValueListenableScreenState();
}

class _ValueListenableScreenState extends State<ValueListenableScreen> {

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  void dispose() {
    super.dispose();
    _counter.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value +=1;
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Value Listenable Builder'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _counter,
          builder: (context,value,index){
            return Text(
              'Counter: $value',
            );
          }
        ),

      ),

    );
  }
}
