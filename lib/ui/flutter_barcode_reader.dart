import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class BarCodeReaderScreen extends StatefulWidget {
  const BarCodeReaderScreen({super.key});

  @override
  State<BarCodeReaderScreen> createState() => _BarCodeReaderScreenState();
}

class _BarCodeReaderScreenState extends State<BarCodeReaderScreen> {
  String result  = '';
  @override
  Widget build(BuildContext context) {

    //media query

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode Reader'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              var res = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleBarcodeScannerPage(),
                  ));
                setState(() {
                if (res is String) {
                  result = res;
                }
              });
            },
            child: const Text('Open Scanner'),
          ),

        ),
      ),
    );
  }
}
