import 'package:flutter/material.dart';
import 'package:shop/Api/ApiService.dart';

import 'package:shop/Api/Food_Api.dart';
import 'package:shop/Details/FoodDetail.dart';

import 'Alert_Ui.dart';
import 'Like_Ui.dart';
import 'index_ui_1.dart';
import 'me_ui.dart';

class Topfoods2 extends StatefulWidget {
  @override
  _Topfoods2State createState() => _Topfoods2State();
}

class _Topfoods2State extends State<Topfoods2> {
  Future<List<Shop>> _getallshop;

  getfood() async {
    setState(() {
      _getallshop = getallshop_api_food();
    });
  }

  Widget loadingView() => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Center(
                  child: Text(
                    'กำลังประมวลผล...',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  @override
  void initState() {
    getfood();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'ร้านอาหาร',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<List<Shop>>(
        future: _getallshop,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            //ตรวจสอบสถานะของ Snapshot
            case ConnectionState.none:
              {
                return Container();
              }
            case ConnectionState.waiting:
              {
                return loadingView();
              }
            case ConnectionState.active:
              {
                return Container();
              }
            default:
              {
                //ตรวจสอบค่าใน snapshot
                if (snapshot.hasData) {
                  //เอาข้อมูลมาแสดง
                  if (snapshot.data != null) {
                    //แสดงได้
                    if (snapshot.data.length > 0) {
                      //มีจ้อมูลแน่ๆ ตรงนี้เขียนเพื่อแสดงผล
                      if (snapshot.data[0].message == 2) {
                        return Container(
                          child: Text('ไม่พบข้อมูล'),
                        );
                      } else {
                        return ListView.separated(
                          separatorBuilder: (context, index) {
                            return Divider(
                              height: 2,
                            );
                          },
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Fooddetails(
                                      shopName: snapshot.data[index].shopName,
                                      shopPic: snapshot.data[index].shopPic,
                                      shopDetail:
                                      snapshot.data[index].shopDetail,
                                      shopLatitude:
                                      snapshot.data[index].shopLatitude,
                                      shopLongtitude:
                                      snapshot.data[index].shopLongtitude,
                                      shopPicPromote1:
                                      snapshot.data[index].shopPicPromote1,
                                      shopPicPromote2:
                                      snapshot.data[index].shopPicPromote2,
                                      shopPicPromote3:
                                      snapshot.data[index].shopPicPromote3,
                                      shopMenuPic1:
                                      snapshot.data[index].shopMenuPic1,
                                      shopMenuPic2:
                                      snapshot.data[index].shopMenuPic2,
                                      shopMenuPic3:
                                      snapshot.data[index].shopMenuPic3,
                                      shopMenuPic4:
                                      snapshot.data[index].shopMenuPic4,
                                      shopMenuPic5:
                                      snapshot.data[index].shopMenuPic5,
                                      shopMenuPic6:
                                      snapshot.data[index].shopMenuPic6,
                                      shopMenu1: snapshot.data[index].shopMenu1,
                                      shopMenu2: snapshot.data[index].shopMenu2,
                                      shopMenu3: snapshot.data[index].shopMenu3,
                                      shopMenu4: snapshot.data[index].shopMenu4,
                                      shopMenu5: snapshot.data[index].shopMenu5,
                                      shopMenu6: snapshot.data[index].shopMenu6,
                                    );
                                  }),
                                );
                              },
                              child: Container(
                              color: Colors.white,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(7.0),
                                        child: Image.network(
                                          '${URL}images/${snapshot.data[index].shopPic}',
                                          width: 80,
                                          height: 70,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(8.0),
                                      width: 220,
                                      child: Column(
                                        children: <Widget>[
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Text(
                                              '${snapshot.data[index].shopName}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Text(
                                              '${snapshot.data[index].shopDetail}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                  color: Colors.blueGrey),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 40,
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  size: 17,
                                                  color: Colors.orangeAccent,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text('3'),
                                                SizedBox(
                                                  width: 15.0,
                                                ),
                                                Icon(
                                                  Icons.location_on,
                                                  size: 17,
                                                  color: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  '5 กม. กระทุ่มแบน',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    } else {
                      return Container();
                    }
                  } else {
                    //ไม่ต้องแสดง
                    return Container();
                  }
                } else if (snapshot.hasError) {
                  //แสดงข้อความแจ้งผู้ใช้
                  return Container(
                    child: Text(
                      'พบปัญหาในการทำงาน ลองใหม่อีกครั้ง',
                    ),
                  );
                } else {
                  return Container();
                }
              }
          }
        },
      ),
    );
  }
}
