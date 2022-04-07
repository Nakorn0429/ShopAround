import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shop/Api/Login_Api.dart';
import 'package:shop/Index/index_ui_1.dart';
import 'package:shop/Register/register_1_ui.dart';

class Login_ui_1 extends StatefulWidget {
  @override
  _Login_ui_1State createState() => _Login_ui_1State();
}

class _Login_ui_1State extends State<Login_ui_1> {
  TextEditingController ct_Username = TextEditingController();
  TextEditingController ct_Password = TextEditingController();
  bool showVisible = true;

//สร้างฟังชั่นในการตรวจสอบและส่งข้อมูลไปที่ service
  _checklogin() async {
//ตรวจสอบ username password ว่างไหม
    //.length นับ .trim ตัด spec
    if (ct_Username.text.trim().length == 0) {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "คำเตือน",
        desc: "กรุณากรอก Email ของท่านด้วย",
        buttons: [
          DialogButton(
            child: Text(
              "ตกลง",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
      return;
    }
    if (ct_Password.text.trim().length == 0) {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "คำเตือน",
        desc: "กรุณากรอก Password ของท่านด้วย",
        buttons: [
          DialogButton(
            child: Text(
              "ตกลง",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
      return;
    }
//ส่ง username password ไปที่ service ที่ server
    await checkloginservice(
      ct_Username.text.trim(),
      ct_Password.text.trim(),
    ).then((value) {
      //โค้ชนนี้จะทำเมื่อมีค่า responnับมา
      if (value == '1') {
        //showAlert('ผลการทำงาน', 'Username Password ถูกต้อง');
        //เปิดไปอีกหน้า
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return Indexhome();
            }),
          ),
        );
      } else if (value == '2') {
        Alert(
          context: context,
          type: AlertType.error,
          title: "คำเตือน",
          desc: "พาสเวิดของท่านไม่ได้อยู่ในระบบ",


          buttons: [
            DialogButton(
              child: Text(
                "ตกลง",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
      } else {
        Alert(
          context: context,
          type: AlertType.warning,
          title: "คำเตือน",
          desc: "ระบบล็อกอินล้มเหลว",
          buttons: [
            DialogButton(
              child: Text(
                "ตกลง",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/logoblue.png',
                  width: 150.0,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 42.0,
                  ),
                  child: TextField(
                    controller: ct_Username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        30.0,
                      )),
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      hintText: 'Username',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 42.0,
                  ),
                  child: TextFormField(
                    controller: ct_Password,
                    obscureText: showVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        32.0,
                      )),
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          if (showVisible == true) {
                            setState(() {
                              showVisible = false;
                            });
                          } else {
                            setState(() {
                              showVisible = true;
                            });
                          }
                        },
                        icon: Icon(
                          showVisible ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: Container(
                    height: 50.0,
                    width: 200,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          _checklogin();
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Frijole',
                          ),
                        ),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 3.0,
                      )),
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        height: 3.0,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 1.0,
                        left: 20.0,
                      ),
                      child: Text(
                        'Not a member? ',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return registerui1();
                          }),
                        );
                      },
                      child: Text(
                        'Create a new account ',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                /*
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: Container(
                    height: 35.0,
                    width: 285,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Text(
                              'SIGN IN WITH FACEBOOK',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Frijole',
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      color: Color(0xFF3B5998),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: Container(
                    height: 35.0,
                    width: 285,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Text(
                              'SIGN IN WITH Google',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Frijole',
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      color: Color(0xFFEA4335),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: Container(
                    height: 35,
                    width: 285,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Text(
                              'SIGN IN WITH TWITTER',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Frijole',
                                fontSize: 12.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      color: Color(0xFF1DCAFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
