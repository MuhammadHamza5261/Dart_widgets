import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final int counter;

  MyInheritedWidget({
    Key? key,
    required Widget child,
    required this.counter,
  }) : super(key: key, child: child);

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.counter != counter;  // Trigger rebuild if data changes
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      counter: counter,
      child: Scaffold(
        appBar: AppBar(
          title: Text("InheritedWidget Example"),
        ),
        body: Column(
          children: [
            CounterDisplay(),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Increment Counter"),
            ),
          ],
        ),
      ),
    );
  }
}


class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inheritedWidget = MyInheritedWidget.of(context);
    return Text(
      "Counter: ${inheritedWidget?.counter}",
      style: TextStyle(fontSize: 24),
    );
  }
}
