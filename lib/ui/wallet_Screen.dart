import 'package:dartwidgetspractise/main.dart';
import 'package:flutter/material.dart';
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              height: height*0.5,
              width: width,
              color: Colors.blue.shade100,
              child: Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Smart Pgx',
                      style: TextStyle(
                        fontSize: 22
                      ),
                    ),
                  ],

                ),


              ),
            ),
            Container(
              height: height*0.2,
              width: width,
              color: Colors.green,
              child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text('Hamza'),
                  ],

                ),


              ),
            ),
            Container(
              height: height*0.3,
              width: width,
              color: Colors.blue,
              child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text('Hamza'),
                  ],

                ),


              ),
            ),
          ],
        ),
      ),

    );
  }
}
