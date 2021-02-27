import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hp_tetris/pages/home/home.dart';
import 'package:hp_tetris/pages/linkedpages/verified.dart';

import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  File pickedImage;

  bool isImageLoaded = false;

  Future pickImage() async {
    var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      pickedImage = tempStore;
      isImageLoaded = true;
    });
  }

  Future <String> readText() async {
    String check;
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(pickedImage);
    TextRecognizer recognizeText = FirebaseVision.instance.textRecognizer();
    VisionText readText = await recognizeText.processImage(ourImage);

    for (TextBlock block in readText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement word in line.elements) {
          print(word.text);
          if (word.text == 'hp') check = 'check';
        }
      }
    }
    return check;
  }

  Future decode() async {
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(pickedImage);
    BarcodeDetector barcodeDetector = FirebaseVision.instance.barcodeDetector();
    List barCodes = await barcodeDetector.detectInImage(ourImage);

    for (Barcode readableCode in barCodes) {
      print(readableCode.displayValue);
    }
  }

  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 120, 157, 219),
        appBar: AppBar(
          //title: Text('Your Rewards!'),
          backgroundColor: Color.fromARGB(255, 120, 157, 219),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.home),
              label: Text('Home'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ],
        ),
        body: Column(
          
          children: <Widget>[
            SizedBox(height: 10.0),
            isImageLoaded
                ? Center(
                    child: Container(
                        height: 380.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: FileImage(pickedImage),
                                fit: BoxFit.cover))),
                  )
                : Container(),
            SizedBox(height: 10.0),
            Padding(
            padding: EdgeInsets.all(20),
            child:Text('Share your Seed Paper skills on Instagram to earn more blocks. Tag @hp and use the hashtags #GreenerWithHP #seedly',
            style: TextStyle(color: Color.fromARGB(255, 243, 243, 243), fontSize: 20))),
            FlatButton.icon(
              color: Color.fromARGB(255, 251, 187, 45),
              icon: Icon(Icons.camera, color: Colors.black),
              label: Text(
                'Pick an image',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: pickImage,
            ),
            SizedBox(height: 10.0),
            FlatButton.icon(
              color: Color.fromARGB(255, 251, 187, 45),
              icon: Icon(Icons.verified, color: Colors.black),
              label: Text(
                'Get it Verified!',
                style: TextStyle(color: Colors.black),
              ),
              //onPressed: readText,
              onPressed: () async{
                String result = await readText();
                if (result==null){
                  setState(() {
                          error = 'Oops Try Again';
                        });
                }
                else {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Verified()),
                );
                }
              },
            ),
            Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            /*
        RaisedButton(
          child: Text('Read Bar Code'),
          onPressed: decode,
        )
        */
          ],
        ));
  }
}
