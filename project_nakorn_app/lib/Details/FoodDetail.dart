import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shop/Api/ApiService.dart';
import 'package:shop/Api/Food_Api.dart';
import 'package:shop/DetailShop/DetailShop_1.dart';
import 'package:shop/Index/Home_UI.dart';
import 'package:shop/Index/index_ui_1.dart';

class Fooddetails extends StatefulWidget {
  String shopName;
  String shopDetail;
  String shopLatitude;
  String shopLongtitude;
  String shopPic;
  String shopPicPromote1;
  String shopPicPromote2;
  String shopPicPromote3;
  String shopMenu1;
  String shopMenu2;
  String shopMenu3;
  String shopMenu4;
  String shopMenu5;
  String shopMenu6;
  String shopMenuPic1;
  String shopMenuPic2;
  String shopMenuPic3;
  String shopMenuPic4;
  String shopMenuPic5;
  String shopMenuPic6;

  Fooddetails(
      {this.shopName,
      this.shopDetail,
      this.shopLatitude,
      this.shopLongtitude,
      this.shopPic,
      this.shopPicPromote1,
      this.shopPicPromote2,
      this.shopPicPromote3,
      this.shopMenuPic1,
      this.shopMenuPic2,
      this.shopMenuPic3,
      this.shopMenuPic4,
      this.shopMenuPic5,
      this.shopMenuPic6,
      this.shopMenu1,
      this.shopMenu2,
      this.shopMenu3,
      this.shopMenu4,
      this.shopMenu5,
      this.shopMenu6});

  @override
  _FooddetailsState createState() => _FooddetailsState();
}

class _FooddetailsState extends State<Fooddetails> {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'ข้อมูลของร้าน',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Container(
              height: 180,
              child: Column(
                children: <Widget>[
                  Divider(
                    height: 2,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    title: Text('ที่อยู่ปัจจุบัน'),
                  ),
                  Divider(
                    height: 2,
                  ),
                  //เบอร์โทร
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.red,
                    ),
                    title: Text('เบอร์โทร'),
                  ),
                  Divider(
                    height: 2,
                  ),
                  //ข้อมูลเพิ่มเติม
                  ListTile(
                    leading: Icon(
                      Icons.details,
                      color: Colors.red,
                    ),
                    title: Text('รายละเอียดเพิ่มเติม'),
                  ),
                  Divider(
                    height: 2,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('ตกลง'),
                color: Colors.redAccent,
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[300],
          title: Text('${widget.shopName}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 190,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      child: Image.network(
                        '${URL}images/${widget.shopPic}',
                        width: MediaQuery.of(context).size.width,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 40,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Indexhome();
                            }),
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.redAccent[100],
                                offset: Offset(0, 9),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      bottom: 15,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Detailshop();
                            }),
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue[200],
                                offset: Offset(0, 9),
                              ),
                            ],
                            color: Colors.pinkAccent[50],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 235,
                      bottom: 15,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink[50],
                              offset: Offset(0, 9),
                            ),
                          ],
                          color: Colors.pinkAccent[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 17),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 26,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 330,
                      bottom: 15,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            createAlertDialog(context);
                          });
                        },
                        child: Container(
                          width: 39,
                          height: 39,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.indigo[200],
                                offset: Offset(0, 9),
                              ),
                            ],
                            color: Colors.pinkAccent[30],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          '${widget.shopName}',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(
                        top: 5,
                      ),
                      width: MediaQuery.of(context).size.width * 0.9,
                      alignment: Alignment.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '${widget.shopDetail}',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.deepOrangeAccent,
                          ),
                          Text(
                            '${widget.shopMenu1}',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.location_on,
                            size: 17,
                            color: Colors.red,
                          ),
                          Text(
                            '${widget.shopMenu1}',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'สถานะร้าน : ',
                            style: TextStyle(),
                          ),
                          Text(
                            '${widget.shopMenu1}',
                            style: TextStyle(
                              color: widget.shopMenu1 == '11'
                                  ? Colors.red
                                  : Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'เปิดทำการในเวลาทำการ 10.00 น. - 20.00 น. หยุดทุก วันพุธ  ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'โปรโมชั่นทางร้าน',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Prompt'),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.blue,
                child: Carousel(
                  indicatorBgPadding: 6.0,
                  dotSize: 5.0,
                  dotColor: Colors.orangeAccent,

                  images: [
                    Image.network(
                      '${URL}promotions/${widget.shopPicPromote1}',
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      '${URL}promotions/${widget.shopPicPromote2}',
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      '${URL}promotions/${widget.shopPicPromote3}',
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                  //animationCurve: Curves.fastOutSlowIn,
                  //animationDuration: Duration(milliseconds: 2000),
                  autoplay: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'เมนูของทางร้าน',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Prompt'),
              ),
              Container(
                margin: EdgeInsets.all(
                  6,
                ),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Card(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.count(
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        crossAxisCount: 3,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                  child: Image.network(
                                    '${URL}picmenu/${widget.shopMenuPic1}',
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.shopMenu1}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                  child: Image.network(
                                    '${URL}picmenu/${widget.shopMenuPic2}',
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.shopMenu2}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                  child: Image.network(
                                    '${URL}picmenu/${widget.shopMenuPic3}',
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.shopMenu3}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                  child: Image.network(
                                    '${URL}picmenu/${widget.shopMenuPic4}',
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.shopMenu4}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                  child: Image.network(
                                    '${URL}picmenu/${widget.shopMenuPic5}',
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.shopMenu5}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                  child: Image.network(
                                    '${URL}picmenu/${widget.shopMenuPic6}',
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.shopMenu6}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
