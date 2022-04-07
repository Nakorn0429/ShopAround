import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shop/Api/Login_Api.dart';
import 'package:shop/Login/login1.dart';

class registerui1 extends StatefulWidget {
  @override
  _registerui1State createState() => _registerui1State();
}

class _registerui1State extends State<registerui1> {
  TextEditingController _reUsername;
  TextEditingController _rePassword;
  TextEditingController _reEmail;
  TextEditingController _reImage;
  String _loginStatus;

  var _key = GlobalKey<FormState>();

  _handleRadioValueChange(String value) {
    setState(() {
      _loginStatus = value;
    });
  }

  Future<void> _showWarningDialog(
    String titlename,
    String msg,
    AlertType type,
  ) {
    return Alert(
      context: context,
      type: type,
      title: titlename,
      desc: msg,
      buttons: [
        DialogButton(
          child: Text(
            "ตกลง",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.pop(context);
            _reEmail.clear();
            _reUsername.clear();
            _rePassword.clear();
            _reImage.clear();
          },
          width: 120,
        )
      ],
    ).show();
  }

  @override
  void initState() {
    _reUsername = TextEditingController();
    _reEmail = TextEditingController();
    _rePassword = TextEditingController();
    _reImage = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Register Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            validator:(String value){
                              if(value.isEmpty) {
                                    return 'กรุณากรอก Username ของท่าน';
                              }else{
                                return null;
                              }

                            } ,
                            controller: _reUsername,
                            decoration: InputDecoration(

                              hintText: 'Username',
                              prefixIcon: Icon(
                                Icons.edit,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            validator: (String value){
                             if(value.length < 6) {
                              return 'Password จะต้องมีอย่างน้อย 6 ตัวขึ้นไป';
                             }else{
                               return null;
                             }
                            },
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            controller: _rePassword,
                            decoration: InputDecoration(

                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            validator: (String value) {
                              if (!((value.contains('@')) &&
                                  (value.contains('.')))) {
                                return 'กรุณากรอกรูปแบบให้ถูกต้อง';
                              } else {
                                return null;
                              }
                            },
                            controller: _reEmail,
                            decoration: InputDecoration(

                              hintText: 'Email',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            controller: _reImage,
                            decoration: InputDecoration(

                              hintText: 'ImageName',
                              prefixIcon: Icon(
                                Icons.image,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                        /*
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              value: '1',
                              groupValue: _loginStatus,
                              onChanged: _handleRadioValueChange,
                            ),
                            Text(
                              'ชาย',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            Radio(
                              value: '2',
                              groupValue: _loginStatus,
                              onChanged: _handleRadioValueChange,
                            ),
                            Text(
                              'หญิง',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                          */

                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.blue[800],
                                  onPressed: () async {
                                    if(_key.currentState.validate()){
                                      String message = await insertlogin_api(
                                          _reUsername.text,
                                          _rePassword.text,
                                          _reEmail.text,
                                          _reImage.text,
                                          _loginStatus);
                                      if (message == '1') {
                                        _showWarningDialog(
                                            'สำเร็จ',
                                            'สมัครสมาชิกเรียบร้อยแล้ว',
                                            AlertType.success);
                                      }
                                    }
                                  },
                                  child: Text(
                                    'ยืนยัน',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.blue[800],
                                  onPressed: () {},
                                  child: Text(
                                    'ยกเลิก',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
