import 'package:dartwidgetspractise/custom_class/custom_text_field.dart';
import 'package:flutter/material.dart';



class TextFieldClass extends StatefulWidget {
  const TextFieldClass({super.key});

  @override
  State<TextFieldClass> createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {

  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscureText = true;


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        title: const Text('Text Field'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:5),
              child: CustomTextField(
                  controller: nameController,
                  hintText: 'Name',
                  prefixIcon: Icons.person,
                keyboardType: TextInputType.text,
              ),
            ),
           const SizedBox(
              height: 20,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomTextField(
              obscureText: obscureText,
              controller: passwordController,
              hintText: 'Password',
              prefixIcon: Icons.lock_open_sharp,
              keyboardType: TextInputType.text,



            ),

          ),
          ],
        ),
      ),
    );
  }
}
