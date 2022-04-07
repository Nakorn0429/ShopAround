import 'package:flutter/material.dart';
import 'package:shop/Details/FoodDetail.dart';
import 'package:shop/Index/Top_Foods2.dart';
import 'package:shop/Index/me_ui_2.dart';

import 'Alert_Ui.dart';
import 'Camera_Ui.dart';
import 'Home_UI.dart';
import 'Like_Ui.dart';
import 'me_ui.dart';

class Indexhome extends StatefulWidget {
  @override
  _IndexhomeState createState() => _IndexhomeState();
}

class _IndexhomeState extends State<Indexhome> {
  int currentIndexSelect = 0;
    var a = 0;





  List<Widget> showPage = [
    HomeUi(),
    LikeUI(),
    CameraUI(),
    AlertUI(),
    Meui2(),
  ];


  List<Widget> showPage2 = [
    HomeUi(),
    LikeUI(),
    CameraUI(),
    AlertUI(),
    MeUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  currentIndexSelect = value;
                });
              },
              currentIndex: currentIndexSelect,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.indigo,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    'หน้าแรก',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  title: Text(
                    'ถูกใจ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                  title: Text(
                    'อัลบั้ม',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  title: Text(
                    'แจ้งเตือน',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  title: Text(
                    'ฉัน',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
              ]),
          body: a == 1 ?
          showPage[currentIndexSelect] : showPage2[currentIndexSelect]  ,
        ),
      ),
    );
  }
}
