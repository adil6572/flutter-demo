import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:myapp/RecognizerScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ImagePicker imagePicker;

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker(); // Initialize imagePicker
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            child: Container(
              height: 70,
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.scanner,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          "Scan",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.document_scanner,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          "Recognize",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.assignment_sharp,
                          size: 35,
                          color: Colors.white,
                        ),
                        Text(
                          "Enhance",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              height: MediaQuery.of(context).size.height - 300,
              color: Colors.black,
            ),
          ),
          Card(
            child: Container(
              height: 100,
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Icon(
                      Icons.rotate_90_degrees_ccw,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.camera,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.image_outlined,
                      size: 35,
                      color: Colors.white,
                    ),
                    onTap: () async {
                      XFile? xfile = await imagePicker.pickImage(
                          source: ImageSource.gallery);
                      if (xfile != null) {
                        File image = File(xfile.path);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return Recognizerscreen(image);
                        }));
                      }
                      // Add your logic to handle the selected image
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
