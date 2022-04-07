import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:shop/Api/Food_Api.dart';

class newShop extends StatefulWidget {
  @override
  _newShopState createState() => _newShopState();
}

class _newShopState extends State<newShop> {

  File  shopPicFile,
                shopPicPromote1File,shopPicPromote2File, shopPicPromote3File,
                shopPicMenu1File, shopPicMenu2File,shopPicMenu3File,
                shopPicMenu4File,shopPicMenu5File,shopPicMenu6File;

  String  shopPicB64,
          shopPicPromote1B64,shopPicPromote2B64, shopPicPromote3B64,
          shopPicMenu1B64, shopPicMenu2B64,shopPicMenu3B64,
          shopPicMenu4B64,shopPicMenu5B64,shopPicMenu6B64;

  chooseImage(int x)  {
    setState(() {
      switch(x){
        case 1 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
                    setState(() {
                      if(value != null) {
                        shopPicFile = value;
                        shopPicB64 = base64Encode(value.readAsBytesSync());
                      }
                    });
                  });
                  break;
        case 2 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicPromote1File = value;
              shopPicPromote1B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;

        case 3 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicPromote2File = value;
              shopPicPromote2B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;


        case 4 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicPromote3File = value;
              shopPicPromote3B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;

        case 5 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicMenu1File = value;
              shopPicMenu1B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;

        case 6 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicMenu2File = value;
              shopPicMenu2B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;

        case 7 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicMenu3File = value;
              shopPicMenu3B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;

        case 8 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicMenu4File = value;
              shopPicMenu4B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;

        case 9 : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicMenu5File = value;
              shopPicMenu5B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
        break;

        default : ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 200).then((value){
          setState(() {
            if(value != null) {
              shopPicMenu6File = value;
              shopPicMenu6B64 = base64Encode(value.readAsBytesSync());
            }
          });
        });
      }
    });
  }

  Widget showImage(int y){
    switch(y){
        case 1 : return Image.file(shopPicFile, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 2 : return Image.file(shopPicPromote1File, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 3 : return Image.file(shopPicPromote2File, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 4 : return Image.file(shopPicPromote3File, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 5 : return Image.file(shopPicMenu1File, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 6 : return Image.file(shopPicMenu2File, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 7 : return Image.file(shopPicMenu3File, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 8 : return Image.file(shopPicMenu4File, height: 50, width: 80, fit: BoxFit.cover,); break;
        case 9 : return Image.file(shopPicMenu5File, height: 50, width: 80, fit: BoxFit.cover,); break;
        default : return Image.file(shopPicMenu6File, height: 50, width: 80, fit: BoxFit.cover,);
    }

  }

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

  var _currenitem = [
    'ร้านอาหาร',
    'ร้านเครื่องดื่ม',
    'ร้านขนมหวาน',
    'ร้านเสื้อผ้า',
    'ร้านเครื่องเขียน'
  ];
  var _curentItemSelected = 'ร้านอาหาร';
  String shoptypeId = '1';


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
                        DropdownButton<String>(
                          underline: Container(
                            height: 0.8,
                            color: Colors.grey,
                          ),
                          elevation: 1,
                          items: _currenitem.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(
                                dropDownStringItem,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            setState(() {
                              this._curentItemSelected = newValueSelected;

                              if(newValueSelected == 'ร้านอาหาร'){
                                shoptypeId = '1';
                              }else if(newValueSelected == 'ร้านเครื่องดื่ม'){
                                shoptypeId = '2';
                              }else if(newValueSelected == 'ร้านขนมหวาน'){
                                shoptypeId = '3';
                              }else if(newValueSelected == 'ร้านเสื้อผ้า'){
                                shoptypeId = '4';
                              }else{
                                shoptypeId = '5';
                              }
                            });
                          },
                          value: _curentItemSelected,
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(1);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicB64 == null ? Center(child: Text("เลือกรูป")) : showImage(1),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(2);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicPromote1B64 == null ? Center(child: Text("เลือกรูป")) : showImage(2),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(3);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicPromote2B64 == null ? Center(child: Text("เลือกรูป")) : showImage(3),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(4);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicPromote3B64 == null ? Center(child: Text("เลือกรูป")) : showImage(4),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(5);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicMenu1B64 == null ? Center(child: Text("เลือกรูป")) : showImage(5),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(6);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicMenu2B64 == null ? Center(child: Text("เลือกรูป")) : showImage(6),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(7);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicMenu3B64 == null ? Center(child: Text("เลือกรูป")) : showImage(7),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(8);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicMenu4B64 == null ? Center(child: Text("เลือกรูป")) : showImage(8),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(9);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicMenu5B64 == null ? Center(child: Text("เลือกรูป")) : showImage(9),
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
                    height: 60,
                    width: 400,
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Center(
                          child: InkWell(
                            onTap: (){
                              //TODO:....
                              chooseImage(10);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(width: 2,color: Colors.blue,style: BorderStyle.solid)
                              ),
                              child: shopPicMenu6B64 == null ? Center(child: Text("เลือกรูป")) : showImage(10),
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

                        onPressed: (){
                          insertshop(
                              _spName.text,
                              _spDetail.text,
                              '',
                              '',
                              shopPicB64,
                              shopPicPromote1B64,
                              shopPicPromote2B64,
                              shopPicPromote3B64,
                              _spShopMenu1.text,
                              _spShopMenu2.text,
                              _spShopMenu3.text,
                              _spShopMenu4.text,
                              _spShopMenu5.text,
                              _spShopMenu6.text,
                              shopPicMenu1B64,
                              shopPicMenu2B64,
                              shopPicMenu3B64,
                              shopPicMenu4B64,
                              shopPicMenu5B64,
                              shopPicMenu6B64,
                              shoptypeId).then((value){
                                if(value == '1'){
                                  print('OK');
                                }else{
                                  print('NOT OK');
                                }
                          });

                        },
                        color: Colors.indigoAccent,
                        child: Text(
                          'บันทึก',
                          style: TextStyle(
                            color: Colors.white
                          ),
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
