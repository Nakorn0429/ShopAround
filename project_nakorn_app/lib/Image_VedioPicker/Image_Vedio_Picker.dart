import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:video_player/video_player.dart';
import 'package:image_picker/image_picker.dart';
import 'package:chewie/chewie.dart';
import 'dart:io';

class ImageVedioPicker extends StatefulWidget {
  @override
  _ImageVedioPickerState createState() => _ImageVedioPickerState();
}

class _ImageVedioPickerState extends State<ImageVedioPicker> {
  File _file;
  dynamic _pickError;
  int _preview = 0;
  bool _playVdo = false;
  ChewieController _chewieController;

  //การแสดงvdo จะต้องสร้างตัวควบคุมการเล่นVdo
  VideoPlayerController _vdoController;

  _photoGalleryPress() async {
    try {
      //เลือกรูปจากแกลโลลี่
      var image = await ImagePicker.pickImage(source:ImageSource.gallery);
      setState(() {
        if(image != null){
          _file = image;
          _preview = 1;
        }

      });
    }catch(e){
      _pickError = e;
    }
  }

  _takePhotoPress()async{
    try {
      //เลือกรูปจากกล้อง
      var image = await ImagePicker.pickImage(source:ImageSource.camera);
      //นำรูปที่ได้เก็บไว้ในตัวแปร _file โดยพิสูทว่า image เป็น null หรือไม่
      setState(() {
        if(image != null){
          _file = image;
          _preview = 1 ;
          //บันทึกลงในเครื่อง
          GallerySaver.saveImage(_file.path, albumName: 'WorkShop10');
        }

      });
    }catch(e){
      _pickError = e;
    }

  }

  _vdoRecordPress() async {
    try{
      //เปิดกล้องเพื่ออัด
      var vdo = await ImagePicker.pickVideo(source:ImageSource.camera);
      //นำVdo ที่อัดไว้เก็บในตัวแปร _file โดยพิสูทว่า image เป็น null หรือไม่
      setState(() {
        if(vdo != null){
          _file = vdo;
          _preview = 2 ;
          //บันทึกลงในเครื่อง
          GallerySaver.saveVideo(_file.path, albumName: 'WorkShop10');
          //กำหนดไฟล์vdoจะให้ควบคุมโดยการที่เราสร้างไว้
          _vdoController = VideoPlayerController.file(_file);
          //_vdoController.initialize();
          //_vdoController.setLooping(true);
          // _vdoController.play();
          _chewieController = ChewieController(
            videoPlayerController: _vdoController,
            aspectRatio: 3/2,
            autoPlay: true,
            looping: true,
          );
        }
      });
    }catch(e){
      _pickError = e;
    }
  }

  _vdoGalleryPress()async{

    try{
      //เลือกรูปจากแกลโลลี่
      var vdo = await ImagePicker.pickVideo(source:ImageSource.gallery);
      //นำVDO ที่เลือกจากแกลลอลี่มาเก็บในตัวแปร _file โดยพิสูทว่า image เป็นNull หรือไม่
      setState(() {
        if(vdo != null){
          _file = vdo;
          _preview = 2 ;
          //บันทึกลงในเครื่อง
          GallerySaver.saveVideo(_file.path, albumName: 'WorkShop10');
          //กำหนดไฟล์vdoจะให้ควบคุมโดยการที่เราสร้างไว้
          _vdoController = VideoPlayerController.file(_file);
          // _vdoController.initialize();
          // _vdoController.setLooping(true);
          // _vdoController.play();
          _chewieController = ChewieController(
            videoPlayerController: _vdoController,
            aspectRatio: 3/2,
            autoPlay: true,
            looping: true,
          );
        }
      });
    }catch(e) {
      _pickError = e;
    }
  }


  @override
  void dispose() {
    // TODO: implement dispose
    _vdoController.dispose();
    _chewieController.dispose();


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Home',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(24.0),
            color: Colors.deepOrange[200],
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,

            child: _file == null || _preview == 0
                ?
            Container(
              color: Colors.grey[100],
            )
                :
            _preview == 1
                ?
            //แสดงรูป
            Image.file(_file)
                :
            //แสดงVdo
            /*
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: AspectRatio(

                          aspectRatio: _vdoController.value.aspectRatio,
                          child: VideoPlayer(_vdoController),
                        ),
                      ),
                      IconButton(
                        onPressed: (){
                          setState(() {
                            _playVdo =!_playVdo;
                            if(_playVdo == true){
                              _vdoController.play();
                               }else{
                              _vdoController.pause();
                            }
                          });

                        },
                        icon: Icon(
                          _playVdo ? Icons.pause_circle_filled : Icons.play_circle_filled,
                          size: 45.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )

                 */
            Chewie(
              controller: _chewieController,
            ),

          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 16.0,
                      left: 16.0,
                      right: 8.0,
                      bottom: 8.0,
                    ),
                    child: SizedBox(
                      height: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          _photoGalleryPress();
                        },
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.collections,
                              color: Colors.white,

                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Photo Gallery',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 16.0,
                      left: 8.0,
                      right: 16.0,
                      bottom: 8.0,
                    ),
                    child: SizedBox(
                      height: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          _takePhotoPress();
                        },
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera,
                              color: Colors.white,

                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Take Photo',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: 16.0,
                      right: 8.0,
                      bottom: 16.0,
                    ),
                    child: SizedBox(
                      height: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          _vdoGalleryPress();
                        },
                        color: Colors.purple,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.play_circle_filled,
                              color: Colors.white,

                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'VDO Gallery',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: 8.0,
                      right: 16.0,
                      bottom: 16.0,
                    ),
                    child: SizedBox(
                      height: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          _vdoRecordPress();
                        },
                        color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.videocam,
                              color: Colors.white,

                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'VDO Record',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

