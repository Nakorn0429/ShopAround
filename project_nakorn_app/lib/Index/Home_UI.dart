import 'package:flutter/material.dart';
import 'package:shop/Api/ApiService.dart';

import 'package:shop/Api/Food_Api.dart';
import 'package:shop/Details/FoodDetail.dart';
import 'package:shop/Image_VedioPicker/Image_Vedio_Picker.dart';

import 'Top_Candys.dart';
import 'Top_Drinks.dart';
import 'Top_Foods2.dart';
import 'Top_Pens.dart';
import 'Top_Shrits.dart';

class HomeUi extends StatefulWidget {
  @override
  _HomeUiState createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  Future<List<Shop>> _getallshop;

  getfood() async {
    setState(() {
      _getallshop = getallshop_api();
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
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orange,
                                  offset: Offset(0, 9),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: ImageIcon(
                                AssetImage(
                                    'assets/images/Index/indexmenufood.png'),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Topfoods2();
                              }),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2,
                          ),
                          child: Text(
                            'อาหาร',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Prompt',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue,
                                  offset: Offset(0, 9),
                                ),
                              ],
                              color: Colors.pinkAccent[50],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: ImageIcon(
                                AssetImage(
                                    'assets/images/Index/indexmenudrink.png'),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Topdrink();
                              }),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2,
                          ),
                          child: Text(
                            'เครื่องดื่ม',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Prompt',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(

                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink,
                                  offset: Offset(0, 9),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: ImageIcon(
                                AssetImage(
                                    'assets/images/Index/indexmenucandy2.png'),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Topcandy();
                              }),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2,
                          ),
                          child: Text(
                            'ขนมหวาน',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Prompt',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green,
                                  offset: Offset(0, 9),
                                ),
                              ],
                              color: Colors.pinkAccent[50],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: ImageIcon(
                                AssetImage(
                                    'assets/images/Index/indexmenushirt.png'),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Topshirt();
                              }),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6,
                          ),
                          child: Text(
                            'เสื้อผ้า',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Prompt',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.indigo,
                                  offset: Offset(0, 9),
                                ),
                              ],
                              color: Colors.pinkAccent[50],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 19),
                              child: ImageIcon(
                                AssetImage(
                                    'assets/images/Index/indexmenupen2.png'),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Toppen();
                              }),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 1,
                          ),
                          child: Text(
                            'เครื่องเขียน',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Prompt',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 250,
                    ),
                    child: Text(
                      'ร้านใกล้ฉัน',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontFamily: 'Prompt'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //Middle-------------------------------------------Shop Rateting-------------------------------------------Middle
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 148.0,
                      child: FutureBuilder<List<Shop>>(
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
                                        return ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: snapshot.data.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                return Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                    return Fooddetails(
                                                      shopName: snapshot
                                                          .data[index].shopName,
                                                      shopPic: snapshot
                                                          .data[index].shopPic,
                                                      shopDetail: snapshot
                                                          .data[index]
                                                          .shopDetail,
                                                      shopLatitude: snapshot
                                                          .data[index]
                                                          .shopLatitude,
                                                      shopLongtitude: snapshot
                                                          .data[index]
                                                          .shopLongtitude,
                                                      shopPicPromote1: snapshot
                                                          .data[index]
                                                          .shopPicPromote1,
                                                      shopPicPromote2: snapshot
                                                          .data[index]
                                                          .shopPicPromote2,
                                                      shopPicPromote3: snapshot
                                                          .data[index]
                                                          .shopPicPromote3,
                                                      shopMenuPic1: snapshot
                                                          .data[index]
                                                          .shopMenuPic1,
                                                      shopMenuPic2: snapshot
                                                          .data[index]
                                                          .shopMenuPic2,
                                                      shopMenuPic3: snapshot
                                                          .data[index]
                                                          .shopMenuPic3,
                                                      shopMenuPic4: snapshot
                                                          .data[index]
                                                          .shopMenuPic4,
                                                      shopMenuPic5: snapshot
                                                          .data[index]
                                                          .shopMenuPic5,
                                                      shopMenuPic6: snapshot
                                                          .data[index]
                                                          .shopMenuPic6,
                                                      shopMenu1: snapshot
                                                          .data[index]
                                                          .shopMenu1,
                                                      shopMenu2: snapshot
                                                          .data[index]
                                                          .shopMenu2,
                                                      shopMenu3: snapshot
                                                          .data[index]
                                                          .shopMenu3,
                                                      shopMenu4: snapshot
                                                          .data[index]
                                                          .shopMenu4,
                                                      shopMenu5: snapshot
                                                          .data[index]
                                                          .shopMenu5,
                                                      shopMenu6: snapshot
                                                          .data[index]
                                                          .shopMenu6,
                                                    );
                                                  }),
                                                );
                                              },
                                              child: Container(
                                                margin: EdgeInsets.all(4.0),
                                                width: 100,
                                                child: Column(
                                                  children: <Widget>[
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7.0),
                                                      child: Image.network(
                                                        '${URL}images/${snapshot.data[index].shopPic}',
                                                        height: 100,
                                                        width: 200,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Text(
                                                        '${snapshot.data[index].shopName} ',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '5 กม.',
                                                      style: TextStyle(
                                                        color: Colors.red,
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
                    ),
                  ),
                  //Bottom-------------------------------------------Promotion-------------------------------------------Bottom
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 250,
                    ),
                    child: Text(
                      'โปรโมชั่น',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontFamily: 'Prompt',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 148.0,
                      child: FutureBuilder<List<Shop>>(
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
                                        return ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: snapshot.data.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                return Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                    return Fooddetails(
                                                      shopName: snapshot
                                                          .data[index].shopName,
                                                      shopPic: snapshot
                                                          .data[index].shopPic,
                                                      shopDetail: snapshot
                                                          .data[index]
                                                          .shopDetail,
                                                      shopLatitude: snapshot
                                                          .data[index]
                                                          .shopLatitude,
                                                      shopLongtitude: snapshot
                                                          .data[index]
                                                          .shopLongtitude,
                                                      shopPicPromote1: snapshot
                                                          .data[index]
                                                          .shopPicPromote1,
                                                      shopPicPromote2: snapshot
                                                          .data[index]
                                                          .shopPicPromote2,
                                                      shopPicPromote3: snapshot
                                                          .data[index]
                                                          .shopPicPromote3,
                                                      shopMenuPic1: snapshot
                                                          .data[index]
                                                          .shopMenuPic1,
                                                      shopMenuPic2: snapshot
                                                          .data[index]
                                                          .shopMenuPic2,
                                                      shopMenuPic3: snapshot
                                                          .data[index]
                                                          .shopMenuPic3,
                                                      shopMenuPic4: snapshot
                                                          .data[index]
                                                          .shopMenuPic4,
                                                      shopMenuPic5: snapshot
                                                          .data[index]
                                                          .shopMenuPic5,
                                                      shopMenuPic6: snapshot
                                                          .data[index]
                                                          .shopMenuPic6,
                                                      shopMenu1: snapshot
                                                          .data[index]
                                                          .shopMenu1,
                                                      shopMenu2: snapshot
                                                          .data[index]
                                                          .shopMenu2,
                                                      shopMenu3: snapshot
                                                          .data[index]
                                                          .shopMenu3,
                                                      shopMenu4: snapshot
                                                          .data[index]
                                                          .shopMenu4,
                                                      shopMenu5: snapshot
                                                          .data[index]
                                                          .shopMenu5,
                                                      shopMenu6: snapshot
                                                          .data[index]
                                                          .shopMenu6,
                                                    );
                                                  }),
                                                );
                                              },
                                              child: Container(
                                                margin: EdgeInsets.all(4.0),
                                                width: 100,
                                                child: Column(
                                                  children: <Widget>[
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7.0),
                                                      child: Image.network(
                                                        '${URL}promotions/${snapshot.data[index].shopPicPromote1}',
                                                        height: 100,
                                                        width: 200,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Text(
                                                        '${snapshot.data[index].shopName}',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '5 กม.',
                                                      style: TextStyle(
                                                        color: Colors.red,
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
