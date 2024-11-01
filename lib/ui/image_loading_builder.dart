import 'package:flutter/material.dart';

class ImageLoadClass extends StatefulWidget {
  const ImageLoadClass({super.key});

  @override
  State<ImageLoadClass> createState() => _ImageLoadClassState();
}

class _ImageLoadClassState extends State<ImageLoadClass> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Loading Builder'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            Center(
              child: ImageBuilderWidget(
                image: 'https://images.pexels.com/photos/926390/pexels-photo-926390.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ImageBuilderWidget extends StatelessWidget {
  final double height , width;
  final String image;
  const ImageBuilderWidget({super.key, this.height = 200, this.width = 200, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Image(
      height: height,
      width: width,
      image: NetworkImage(image),
      errorBuilder: (context, exception, stack){
         return SizedBox(
           height: height,
           width: width,
           child: const Icon(
             Icons.error, color: Colors.red,
           ),
         );
      },
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loading){
        if(loading == null) return child;
        return SizedBox(
          height: height,
          width: width,
          child: Center(
              child: CircularProgressIndicator(
                value: loading.expectedTotalBytes != null ? loading.cumulativeBytesLoaded/ loading.expectedTotalBytes! : null,
              ),
          ),
        );
      }
    );
  }
}

