import 'package:flutter/material.dart';
class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper Screen'),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        steps: [




        ],
      ),
    );
  }
}
