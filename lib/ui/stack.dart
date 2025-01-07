import 'package:flutter/material.dart';
class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stack Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 15),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              height: size.height*0.5,
            ),
         /// this techniques will be correct now
          // const Positioned(
          //     top: -10,
          //       right: -5,
          //       child: Icon(Icons.cancel,color: Colors.red,)
          // ),
              Positioned(
               top: 0,
                 right: 0,
                child: Transform.translate(
                  // container ka hisab sa offset adjust kar skta han ka icon kis jaga pa show ho ga
                  offset: const Offset(5, -10),
                  child: const Icon(
                    Icons.cancel,color: Colors.red,
                  ),
        ),
      ),
          ],
        ),
      )

    );
  }
}
