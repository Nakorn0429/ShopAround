import 'package:flutter/material.dart';
import 'package:shop/AddDetailShopDatabase/NewShop_1.dart';
import 'package:shop/Api/ApiService.dart';
import 'package:shop/Api/Food_Api.dart';
import 'package:shop/Index/edit_meui2.dart';

class Meui2 extends StatefulWidget {

  @override
  _Meui2State createState() => _Meui2State();
}

class _Meui2State extends State<Meui2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'ฉัน',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return editMeui2();
                    }),
                  );
                },
                child: Container(

                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        leading: Image.network(
                          'https://cdn.pixabay.com/photo/2014/04/02/10/48/symbol-304598_960_720.png',
                        ),
                        title: Text(
                          'Nakorn Kaingu',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.email,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Aomgranlan@hotmail.com',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.phone_android,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '061-467-4823',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Container(
                          width: 100,
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'แก้ไขข้อมูล',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 2,
              ),
              //เพิ่มร้านค้า
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return newShop();
                    }),
                  );
                },
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  title: Text(
                    'เพิ่มร้านค้าของท่าน',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                  ),
                ),
              ),
              Divider(
                height: 2,
              ),
              //เพิ่มที่อยู่
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Icon(
                    Icons.home,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  'เพิ่มที่อยู่',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                ),
              ),
              Divider(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
