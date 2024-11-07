import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({super.key});

  @override
  _TweenAnimationExampleState createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {

  bool _isLarge = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isLarge = !_isLarge;
            });
          },
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 100.0, end: _isLarge ? 200.0 : 100.0),
            duration: const Duration(seconds: 1),
            builder: (context, double size, child) {
              return Container(
                width: size,
                height: size,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Tap me!',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
