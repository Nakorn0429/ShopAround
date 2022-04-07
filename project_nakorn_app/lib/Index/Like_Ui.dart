import 'package:flutter/material.dart';

import 'index_ui_1.dart';
import 'me_ui.dart';

class LikeUI extends StatefulWidget {
  @override
  _LikeUIState createState() => _LikeUIState();
}

class _LikeUIState extends State<LikeUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'ร้านที่คุณถูกใจ',
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
