import 'dart:io';

import 'package:shop/Api/Api_Service_Login.dart';

import 'ApiService.dart';

import "package:http/http.dart" as http;
import 'dart:convert';


final String URL = "http://192.168.1.27/loginsr/";








//---------------------------------------------------------------------------------
//เช็คล็อคอิน
Future<String> checkloginservice(String loginUsername , String loginPassword) async {

  Login login = Login(
    loginUsername: loginUsername,
    loginPassword: loginPassword,
  );

  final response = await http.post(
    Uri.encodeFull('${URL}checklogin.php'),
    body: json.encode(login.toJson()),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await json.decode(response.body);
    return response_data['message'];
  } else {
    return null;
    //throw Exception('Failed to update a Task. Error: ${response.toString()}');
  }
}
//-----------------------------------------------------------------
Future<List<Login>> getlogin_api() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getalllogin.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final login_data = await response_data.map<Login>((json) {
      return Food.fromJson(json);
    }).toList();
    return login_data;
  } else {
    return null;
  }
}
//--------------------------------------------------------------------------------
Future<String> insertlogin_api(
    String loginUsername,
    String loginPassword,
    String loginEmail,
    String loginImage,
    String loginStatus,) async {
  Login login = Login(
    loginUsername: loginUsername,
    loginPassword: loginPassword,
    loginEmail: loginEmail,
    loginImage: loginImage,
    loginStatus: loginStatus,
  );

  final response = await http.post(
    Uri.encodeFull('${URL}insertlogin.php'),
    body: json.encode(login.toJson()),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await json.decode(response.body);
    return response_data['message'];
  } else {
    throw Exception('Failed to update a Task. Error: ${response.toString()}');
  }
}

//-----------------------------------------------------------------
//-----------------------------------------------------------------
//-----------------------------------------------------------------
//Register Function
Future<List<Register>> getregister_api() async {
  final response = await http.get(
    Uri.encodeFull('${URL}register/getregister.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final register_data = await response_data.map<Register>((json) {
      return Food.fromJson(json);
    }).toList();
    return register_data;
  } else {
    return null;
  }
}