import 'package:flutter/material.dart';

import 'Camera_Ui.dart';
import 'Like_Ui.dart';
import 'index_ui_1.dart';
import 'me_ui.dart';

class AlertUI extends StatefulWidget {
  @override
  _AlertUIState createState() => _AlertUIState();
}

class _AlertUIState extends State<AlertUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'แจ้งเตือน',
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
