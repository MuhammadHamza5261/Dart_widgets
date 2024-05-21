import 'package:flutter/material.dart';
class TextFormScreen extends StatefulWidget {
  const TextFormScreen({super.key});

  @override
  State<TextFormScreen> createState() => _TextFormScreenState();
}

class _TextFormScreenState extends State<TextFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Text Form Field',
          style: TextStyle(
              color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.black87,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
               prefixIcon: const Icon(Icons.email),
                hintText: 'Email',

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(20)
                ),



              ),
            ),
          ],
        ),
      ),
    );
  }
}
