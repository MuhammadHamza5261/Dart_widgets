import 'package:flutter/material.dart';

class FullScreenImage extends StatefulWidget {
  const FullScreenImage({super.key});

  @override
  State<FullScreenImage> createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://4kwallpapers.com/images/wallpapers/vasco-da-gama-bridge-lisbon-portugal-tagus-river-sunrise-5120x2880-2087.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),

    );
  }
}
