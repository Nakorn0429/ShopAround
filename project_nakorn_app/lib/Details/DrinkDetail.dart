import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop/Api/Food_Api.dart';
import 'package:shop/DetailShop/DetailShop_1.dart';

class Drinkdetail extends StatefulWidget {
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

  Drinkdetail(
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
  _DrinkdetailState createState() => _DrinkdetailState();
}

class _DrinkdetailState extends State<Drinkdetail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Image.network(
                    '${URL}images/${widget.shopPic}',
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Detailshop();
                          }),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'ดูข้อมูลร้าน',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                        ],
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
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
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
