import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class testpicker extends StatefulWidget {
  @override
  _testpickerState createState() => _testpickerState();
}

class _testpickerState extends State<testpicker> {
  static final String uploadEndPonit = 'http://192.168.1.27/testupload/upload_image.php';
  Future<File> file;
  String status = '';
  String base64Image;
  File tmpFile;
  String errMessage = 'Error UploadImgae';

  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
  }

  setStats(String message) {
    setState(() {
      status = message;
    });
  }

  startupload() {
    setStats('Uploading Image...');
    if (null == tmpFile) {
      setStats(errMessage);
      return;
    }
    String fileName = tmpFile.path.split('food_ImageMenu').last;
    upload(fileName);
  }

  upload(String fileName){
    http.post(uploadEndPonit,body: {
       "image":base64Image,
        "name":fileName,
    }).then((result){
      setStats(result.statusCode == 200 ? result.body : errMessage);

    }).catchError((error){
      setStats(error);
    });

  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: file,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          tmpFile = snapshot.data;
          base64Image = base64Encode(snapshot.data.readAsBytesSync());
          return Flexible(
            child: Image.file(
              snapshot.data,
              fit: BoxFit.fill,
            ),
          );
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picker Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Test Upload/Image',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            OutlineButton(
              onPressed: chooseImage,
              child: Text(
                'Choose Image',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            showImage(),
            SizedBox(
              height: 20.0,
            ),
            OutlineButton(
              onPressed: startupload,
              child: Text(
                'StartUpload Image',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(status,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
