
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop/Api/Food_Api.dart';

class Newshop2 extends StatefulWidget {
  @override
  _Newshop2State createState() => _Newshop2State();
}

class _Newshop2State extends State<Newshop2> {
  TextEditingController _spName;
  TextEditingController _spDetail;
  TextEditingController _spPic;
  TextEditingController _shoptypeId;
  TextEditingController _spPicPromote1;
  TextEditingController _spPicPromote2;
  TextEditingController _spPicPromote3;
  TextEditingController _spShopMenu1;
  TextEditingController _spShopMenu2;
  TextEditingController _spShopMenu3;
  TextEditingController _spShopMenu4;
  TextEditingController _spShopMenu5;
  TextEditingController _spShopMenu6;
  TextEditingController _spShopMenuPic1;
  TextEditingController _spShopMenuPic2;
  TextEditingController _spShopMenuPic3;
  TextEditingController _spShopMenuPic4;
  TextEditingController _spShopMenuPic5;
  TextEditingController _spShopMenuPic6;


  Future<File> file;


  String _shopStatus;


  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
  }


  _handleRadioValueChange(String value) {
    setState(() {
      _shopStatus = value;
    });
  }

  Future<void> _showWarningDialog(BuildContext context, String msg) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('คำเตือน'),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          content: Text(msg),
          actions: <Widget>[
            RaisedButton(
              child: Text(
                'Ok',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.green,
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    _shopStatus = '1';
    _spName = TextEditingController();
    _spDetail = TextEditingController();
    _spPic = TextEditingController();
    _spPicPromote1 = TextEditingController();
    _spPicPromote2 = TextEditingController();
    _spPicPromote3 = TextEditingController();
    _spShopMenu1 = TextEditingController();
    _spShopMenu2 = TextEditingController();
    _spShopMenu3 = TextEditingController();
    _spShopMenu4 = TextEditingController();
    _spShopMenu5 = TextEditingController();
    _spShopMenu6 = TextEditingController();
    _spShopMenuPic1 = TextEditingController();
    _spShopMenuPic2 = TextEditingController();
    _spShopMenuPic3 = TextEditingController();
    _spShopMenuPic4 = TextEditingController();
    _spShopMenuPic5 = TextEditingController();
    _spShopMenuPic6 = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'เพิ่มข้อมูลร้านของท่าน',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(
                top: 25,
                right: 25,
                left: 25,
              ),
              child: Column(
                children: <Widget>[
                  //ชื่อร้าน
                  Container(
                    margin: EdgeInsets.all(25),
                    width: 400,
                    child: TextFormField(
                      controller: _spName,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                      decoration: new InputDecoration(
                        icon: Icon(
                          Icons.add_shopping_cart,
                          size: 25,
                        ),
                        labelText: "ชื่อร้านของท่าน",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(4.0),
                          borderSide: new BorderSide(),
                        ),
                      ),
                    ),
                  ),
                  //หมวดร้าน
                  Container(
                    margin: EdgeInsets.only(
                      left: 25,
                      right: 25,
                    ),
                    width: 400,
                    child: TextFormField(
                      controller: _spDetail,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                      decoration: new InputDecoration(
                        icon: Icon(
                          Icons.subject,
                          size: 25,
                        ),
                        labelText: "ชื่อหมวดเช่น ขนม/เบอเกอรี่/เค้ก",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(4.0),
                          borderSide: new BorderSide(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //ประเภทร้าน
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'เลือกประเภทร้าน',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Radio(
                          value: '1',
                          groupValue: _shopStatus,
                          onChanged: _handleRadioValueChange,
                        ),
                        Text(
                          'ร้านอาหาร',
                          style: new TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 144,
                    ),
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: '2',
                          groupValue: _shopStatus,
                          onChanged: _handleRadioValueChange,
                        ),
                        Text(
                          'ร้านเครื่องดิ่ม',
                          style: new TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 144,
                    ),
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: '3',
                          groupValue: _shopStatus,
                          onChanged: _handleRadioValueChange,
                        ),
                        Text(
                          'ร้านขนมหวาน',
                          style: new TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 144,
                    ),
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: '4',
                          groupValue: _shopStatus,
                          onChanged: _handleRadioValueChange,
                        ),
                        Text(
                          'ร้านเสื้อผ้า',
                          style: new TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 144,
                    ),
                    child: Row(
                      children: <Widget>[
                        Radio(
                          value: '5',
                          groupValue: _shopStatus,
                          onChanged: _handleRadioValueChange,
                        ),
                        Text(
                          'ร้านเครื่องเขียน',
                          style: new TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //รูปหลักร้าน
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: chooseImage,
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: Text(
                            'รูปหน้าร้านของท่าน',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //รูปโปรโมชั่นร้าน---------------------------------------------------
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(

                            onPressed: chooseImage,
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: Text(
                            'รูปโปรโมชั่น 1',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: Text(
                            'รูปโปรโมชั่น 2',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: Text(
                            'รูปโปรโมชั่น 3',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: TextFormField(
                            controller: _spShopMenu1,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                            decoration: new InputDecoration(
                              labelText: "ชื่อเมนูที่ 1",
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: TextFormField(
                            controller: _spShopMenu2,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                            decoration: new InputDecoration(
                              labelText: "ชื่อเมนูที่ 2",
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: TextFormField(
                            controller: _spShopMenu3,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                            decoration: new InputDecoration(
                              labelText: "ชื่อเมนูที่ 3",
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: TextFormField(
                            controller: _spShopMenu4,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                            decoration: new InputDecoration(
                              labelText: "ชื่อเมนูที่ 4",
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: TextFormField(
                            controller: _spShopMenu5,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                            decoration: new InputDecoration(
                              labelText: "ชื่อเมนูที่ 5",
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Container(
                          width: 80,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Text(
                              'Choose Image',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          width: 200,
                          child: TextFormField(
                            controller: _spShopMenu6,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                            decoration: new InputDecoration(
                              labelText: "ชื่อเมนูที่ 6",
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () async {
                          if (_spName.text.trim().length == 0) {
                            _showWarningDialog(
                                context, 'ตรวจสอบการป้อนชื่อ...');
                          } else {
                            inserttest(
                                _spName.text, _spDetail.text, _shopStatus);

                            _showWarningDialog(
                                context, 'บันทึกเรียบร้อย...');
                          }
                        },
                        color: Colors.indigoAccent,
                        child: Text(
                          'บันทึก',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
