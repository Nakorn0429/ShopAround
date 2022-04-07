import 'package:flutter/material.dart';

class editMeui2 extends StatefulWidget {
  @override
  _editMeui2State createState() => _editMeui2State();
}


class _editMeui2State extends State<editMeui2> {
    TextEditingController _editName;
    TextEditingController _editEmail;
    TextEditingController _editPhon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('แก้ไขข้อมูลส่วนตัว'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: _editName,
                          decoration: InputDecoration(
                            labelText: 'Enter Name',

                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.edit,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: _editEmail,
                          decoration: InputDecoration(
                            labelText: 'Enter Email',
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.edit,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          controller: _editPhon,
                          decoration: InputDecoration(
                            labelText: 'Enter Phon',
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.edit,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        child: Text(
                          'บันทึก',

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
