import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class F extends StatefulWidget {
  const F({super.key});

  @override
  State<F> createState() => _FState();
}

class _FState extends State<F> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              _showAttachOptions(context);
            },
            child: const Text('Click me'),
        ),
      ),
    );
  }

  void _showAttachOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return  SafeArea(
          child: Wrap(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       children: [
                         Container(
                           decoration: BoxDecoration(
                               color: Colors.grey.shade300,
                             borderRadius: BorderRadius.circular(10),
                           ),


                           child: Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Image.asset('assets/images/camera.png',width: 30,height: 30,),
                           )
                         ),
                         const SizedBox(
                           height: 10,
                         ),
                         const Text('Camera'),
                       ],
                     ),
                     Column(
                       children: [
                         Container(
                             decoration: BoxDecoration(
                                 color: Colors.grey.shade300,
                                 borderRadius: BorderRadius.circular(10)
                             ),


                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Image.asset('assets/images/picture.png',width: 30,height: 30,),
                             )
                         ),
                         const SizedBox(
                           height: 10,
                         ),
                         const Text('Gallery'),
                       ],
                     ),
                     Column(
                       children: [
                         Container(
                             decoration: BoxDecoration(
                                 color: Colors.grey.shade300,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Image.asset('assets/images/google-docs.png',width: 30,height: 30,),
                             )
                         ),
                         const SizedBox(
                           height: 10,
                         ),
                         const Text('Document'),
                       ],
                     ),
                   ],
                 ),
               ),


            ],
          ),
        );
      },
    );
  }
}
