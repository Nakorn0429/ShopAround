import 'dart:io';

import 'ApiService.dart';

import "package:http/http.dart" as http;
import 'dart:convert';


 final String URL = "http://192.168.1.27/projectdb/Shop/";



//-----------------------------------------------------------------
Future<List<Food>> getfood_apis() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getfood.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final food_data = await response_data.map<Food>((json) {
      return Food.fromJson(json);
    }).toList();
    return food_data;
  } else {
    return null;
  }
}

//-----------------------------------------------------------------

Future<String> insertfood(
    String foodName,
    String foodSubname,
    String foodRate,
    String foodKilomate,
    String foodStatus,
    String foodImagePromotion,
    String foodImageMenu,
    String foodNameMenu) async {
  Food food = Food(
    foodName: foodName,
    foodSubname: foodSubname,
    foodRate: foodRate,
    foodKilomate: foodKilomate,
    foodStatus: foodStatus,
    foodImagePromotion: foodImagePromotion,
    foodImageMenu: foodImageMenu,
    foodNameMenu: foodNameMenu,
  );

  final response = await http.post(
    Uri.encodeFull('${URL}insertfood.php'),
    body: json.encode(food.toJson()),
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
Future<String> updatefood(
    String foodId,
    String foodName,
    String foodSubname,
    String foodRate,
    String foodKilomate,
    String foodStatus,
    String foodImagePromotion,
    String foodImageMenu,
    String foodNameMenu) async {
  Food food = Food(
      foodId: foodId,
      foodName: foodName,
      foodSubname: foodSubname,
      foodRate: foodRate,
      foodKilomate: foodKilomate,
      foodStatus: foodStatus,
      foodImagePromotion: foodImagePromotion,
      foodImageMenu: foodImageMenu,
      foodNameMenu: foodNameMenu);

  final response = await http.post(
    Uri.encodeFull('${URL}updatefood.php'),
    body: json.encode(food.toJson()),
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
Future<String> deletefood(String foodId) async {
  Food food = Food(foodId: foodId);

  final response = await http.post(
    Uri.encodeFull('${URL}deletefood.php'),
    body: json.encode(food.toJson()),
    headers: {"Content-Type": "application/json"},
  );
  if (response.statusCode == 200) {
    final response_data = await json.decode(response.body);
    return response_data['message'];
  } else {
    throw Exception('Failed to update a Task. Error: ${response.toString()}');
  }
}

/*
----------------------------------------------------------------------------
---------------------------------------------------------------------------
----------------------------------------------------------------------------
 */
//Shop
Future<List<Shop>> getallshop_api() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getallshop.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final shop_data = await response_data.map<Shop>((json) {
      return Shop.fromJson(json);
    }).toList();
    return shop_data;
  } else {
    return null;
  }
}

Future<List<Shop>> getallshop_api_food() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getallshopfood.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final shop_data = await response_data.map<Shop>((json) {
      return Shop.fromJson(json);
    }).toList();
    return shop_data;
  } else {
    return null;
  }
}

Future<List<Shop>> getallshop_api_drink() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getallshopdrink.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final shop_data = await response_data.map<Shop>((json) {
      return Shop.fromJson(json);
    }).toList();
    return shop_data;
  } else {
    return null;
  }
}

Future<List<Shop>> getallshop_api_candy() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getallshopcandy.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final shop_data = await response_data.map<Shop>((json) {
      return Shop.fromJson(json);
    }).toList();
    return shop_data;
  } else {
    return null;
  }
}

Future<List<Shop>> getallshop_api_shirt() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getallshopshirt.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final shop_data = await response_data.map<Shop>((json) {
      return Shop.fromJson(json);
    }).toList();
    return shop_data;
  } else {
    return null;
  }
}

Future<List<Shop>> getallshop_api_pen() async {
  final response = await http.get(
    Uri.encodeFull('${URL}getallshoppen.php'),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await jsonDecode(response.body);
    final shop_data = await response_data.map<Shop>((json) {
      return Shop.fromJson(json);
    }).toList();
    return shop_data;
  } else {
    return null;
  }
}

//Insert Shop
//----------------------------------------------------------------------------
Future<String> insertshop(
    String shopName,
    String shopDetail,
    String shopLatitude,
    String shopLongtitude,
    String shopPic,
    String shopPicPromote1,
    String shopPicPromote2,
    String shopPicPromote3,
    String shopMenu1,
    String shopMenu2,
    String shopMenu3,
    String shopMenu4,
    String shopMenu5,
    String shopMenu6,
    String shopMenuPic1,
    String shopMenuPic2,
    String shopMenuPic3,
    String shopMenuPic4,
    String shopMenuPic5,
    String shopMenuPic6,
    String shoptypeId) async {

  Shop shop = Shop(   shopName: shopName,
    shopDetail: shopDetail,
    shopLatitude: shopLatitude,
    shopLongtitude: shopLongtitude,
    shopPic: shopPic,
    shopPicPromote1: shopPicPromote1,
    shopPicPromote2: shopPicPromote2,
    shopPicPromote3: shopPicPromote3,
    shopMenu1: shopMenu1,
    shopMenu2: shopMenu2,
    shopMenu3: shopMenu3,
    shopMenu4: shopMenu4,
    shopMenu5: shopMenu5,
    shopMenu6: shopMenu6,
    shopMenuPic1: shopMenuPic1,
    shopMenuPic2: shopMenuPic2,
    shopMenuPic3: shopMenuPic3,
    shopMenuPic4: shopMenuPic4,
    shopMenuPic5: shopMenuPic5,
      shopMenuPic6: shopMenuPic6,
      shoptypeId: shoptypeId
  );

  final response = await http.post(
    Uri.encodeFull('${URL}insertshop.php'),
    body: json.encode(shop.toJson()),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print(response.body.toString());
    final response_data = await json.decode(response.body);
    return response_data['message'];
  } else {
    throw Exception('Failed to update a Task. Error: ${response.toString()}');
  }
}
//-------------------------------------------------------------------------------

Future<String> inserttest(
    String shopName,
    String shopDetail,
    String shoptypeId) async {
  Shop shop = Shop(
    shopName: shopName,
    shopDetail: shopDetail,
    shoptypeId: shoptypeId,
  );

  final response = await http.post(
    Uri.encodeFull('${URL}inserttest.php'),
    body: json.encode(shop.toJson()),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    final response_data = await json.decode(response.body);
    return response_data['message'];
  } else {
    throw Exception('Failed to update a Task. Error: ${response.toString()}');
  }
}