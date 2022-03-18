import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tourism/views/result.dart';

class ImageScan extends StatefulWidget {
  const ImageScan({Key? key}) : super(key: key);

  @override
  State<ImageScan> createState() => _ImageScanState();
}

class _ImageScanState extends State<ImageScan> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // ignore: unnecessary_null_comparison
      if (image == null) {
        return;
      }
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future captureImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      // ignore: unnecessary_null_comparison
      if (image == null) {
        return;
      }
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  navigateToResult(File? image) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Result(
                  image: image,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              //color: Colors.black,
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: image != null
                    ? Image.file(image!)
                    : const Text(
                        "Select Image",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      captureImage();
                    },
                    child: const Text("Capture Image",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 13))),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        pickImage();
                      },
                      child: const Text("Select Image",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 13))),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image != null
                  ? ElevatedButton(
                      onPressed: () {
                        navigateToResult(image);
                      },
                      child: const Text("Scan Image",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 13)))
                  : Container()
            ],
          )
        ],
      ),
    );
  }
}
