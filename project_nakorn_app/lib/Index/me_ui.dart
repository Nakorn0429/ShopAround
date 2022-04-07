import 'package:flutter/material.dart';
import 'package:shop/AddDetailShopDatabase/NewShop_1.dart';
import 'package:shop/AddDetailShopDatabase/NewShop_2.dart';
import 'package:shop/Image_VedioPicker/Image_Vedio_Picker.dart';
import 'package:shop/Image_VedioPicker/Testpicker.dart';
import 'package:shop/Image_VedioPicker/test_image_server.dart';
import 'package:shop/Index/me_ui_2.dart';
import 'package:shop/Login/login1.dart';

import 'Alert_Ui.dart';
import 'index_ui_1.dart';

class MeUI extends StatefulWidget {

  @override
  _MeUIState createState() => _MeUIState();
}





class _MeUIState extends State<MeUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'การตั้งค่า',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 1,
                ),
                Image.asset(
                  'assets/images/logoblue.png',
                  width: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.blue[500],
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Login_ui_1();
                        }),
                      );
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'เข้าสู่ระบบหรือสมัครสมาชิก',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.pink[500],
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Meui2();
                        }),
                      );
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'หลังสมัครสมาชิกแล้ว',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.orange[500],
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ImageVedioPicker();
                        }),
                      );
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'เปิดกล้องถ่ายรูป/วีดีโอ อ.ชนิน',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.amber[500],
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return testpicker();
                        }),
                      );
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'เอารูปจากเครื่องอัพขึ้นPHP',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.amber[500],
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return testupimage();
                        }),
                      );
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'อัพขึ้นserver',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.amber[500],
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return newShop();
                        }),
                      );
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'NewShop Dropdown',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.amber[500],
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Newshop2();
                        }),
                      );
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        'NewShop Radio',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
