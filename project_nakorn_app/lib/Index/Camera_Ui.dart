import 'package:flutter/material.dart';

import 'Like_Ui.dart';
import 'index_ui_1.dart';
import 'me_ui.dart';

class CameraUI extends StatefulWidget {
  @override
  _CameraUIState createState() => _CameraUIState();
}

class _CameraUIState extends State<CameraUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'อัลบั้ม',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
