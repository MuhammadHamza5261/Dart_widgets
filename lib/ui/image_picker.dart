import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class MyPicker extends StatefulWidget {
  const MyPicker({Key? key}) : super(key: key);

  @override
  _MyPickerState createState() => _MyPickerState();
}

class _MyPickerState extends State<MyPicker> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {

    //add media query of this screen

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text("Image Picker"),
          centerTitle: true,
        ),
        body: imageFile == null
            ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                      height: height*0.22,
                      width: width*2,
                      child: Image.network(
                          'https://www.lifewire.com/thmb/P856-0hi4lmA2xinYWyaEpRIckw=/1920x1326/filters:no_u'
                              'pscale():max_bytes(150000):strip_icc()/cloud-upload-a30f385a928e44e199a62210d578375a.jpg',
                      ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            imageFromGallery();
                          },
                          child: const Text(
                            "GALLERY",
                            style: TextStyle(
                                color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade300,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            imageFromCamera();
                          },
                          child: const Text("CAMERA",
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
            : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Your Uploaded Image",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.file(
                    imageFile!,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )));
  }

  // Create a method image pick from gallery

  imageFromGallery() async {
    XFile? pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.gallery, maxHeight: 200, maxWidth: 200);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  // Create a method to open a camera from a device
  imageFromCamera() async {
    XFile? pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.camera, maxHeight: 200, maxWidth: 200);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}