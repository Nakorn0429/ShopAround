class Food {
  String message;
  String foodId;
  String foodName;
  String foodSubname;
  String foodRate;
  String foodKilomate;
  String foodStatus;
  String foodImagePromotion;
  String foodImageMenu;
  String foodNameMenu;

  Food(
      {this.message,
      this.foodId,
      this.foodName,
      this.foodSubname,
      this.foodRate,
      this.foodKilomate,
      this.foodStatus,
      this.foodImagePromotion,
      this.foodImageMenu,
      this.foodNameMenu});

  Food.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    foodId = json['food_Id'];
    foodName = json['food_Name'];
    foodSubname = json['food_Subname'];
    foodRate = json['food_Rate'];
    foodKilomate = json['food_Kilomate'];
    foodStatus = json['food_Status'];
    foodImagePromotion = json['food_ImagePromotion'];
    foodImageMenu = json['food_ImageMenu'];
    foodNameMenu = json['food_NameMenu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['food_Id'] = this.foodId;
    data['food_Name'] = this.foodName;
    data['food_Subname'] = this.foodSubname;
    data['food_Rate'] = this.foodRate;
    data['food_Kilomate'] = this.foodKilomate;
    data['food_Status'] = this.foodStatus;
    data['food_ImagePromotion'] = this.foodImagePromotion;
    data['food_ImageMenu'] = this.foodImageMenu;
    data['food_NameMenu'] = this.foodNameMenu;
    return data;
  }
}

//-------------------------------------------------------------------------------
//Class Shop = Shop_tb

class Shop {
  String message;

  String shopId;
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
  String shoptypeId;

  Shop(
      {this.message,
      this.shopId,
      this.shopName,
      this.shopDetail,
      this.shopLatitude,
      this.shopLongtitude,
      this.shopPic,
      this.shopPicPromote1,
      this.shopPicPromote2,
      this.shopPicPromote3,
      this.shopMenu1,
      this.shopMenu2,
      this.shopMenu3,
      this.shopMenu4,
      this.shopMenu5,
      this.shopMenu6,
      this.shopMenuPic1,
      this.shopMenuPic2,
      this.shopMenuPic3,
      this.shopMenuPic4,
      this.shopMenuPic5,
      this.shopMenuPic6,
      this.shoptypeId});

  Shop.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    shopId = json['shopId'];
    shopName = json['shopName'];
    shopDetail = json['shopDetail'];
    shopLatitude = json['shopLatitude'];
    shopLongtitude = json['shopLongtitude'];
    shopPic = json['shopPic'];
    shopPicPromote1 = json['shopPicPromote1'];
    shopPicPromote2 = json['shopPicPromote2'];
    shopPicPromote3 = json['shopPicPromote3'];
    shopMenu1 = json['shopMenu1'];
    shopMenu2 = json['shopMenu2'];
    shopMenu3 = json['shopMenu3'];
    shopMenu4 = json['shopMenu4'];
    shopMenu5 = json['shopMenu5'];
    shopMenu6 = json['shopMenu6'];
    shopMenuPic1 = json['shopMenuPic1'];
    shopMenuPic2 = json['shopMenuPic2'];
    shopMenuPic3 = json['shopMenuPic3'];
    shopMenuPic4 = json['shopMenuPic4'];
    shopMenuPic5 = json['shopMenuPic5'];
    shopMenuPic6 = json['shopMenuPic6'];
    shoptypeId = json['shoptypeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['shopId'] = this.shopId;
    data['shopName'] = this.shopName;
    data['shopDetail'] = this.shopDetail;
    data['shopLatitude'] = this.shopLatitude;
    data['shopLongtitude'] = this.shopLongtitude;
    data['shopPic'] = this.shopPic;
    data['shopPicPromote1'] = this.shopPicPromote1;
    data['shopPicPromote2'] = this.shopPicPromote2;
    data['shopPicPromote3'] = this.shopPicPromote3;
    data['shopMenu1'] = this.shopMenu1;
    data['shopMenu2'] = this.shopMenu2;
    data['shopMenu3'] = this.shopMenu3;
    data['shopMenu4'] = this.shopMenu4;
    data['shopMenu5'] = this.shopMenu5;
    data['shopMenu6'] = this.shopMenu6;
    data['shopMenuPic1'] = this.shopMenuPic1;
    data['shopMenuPic2'] = this.shopMenuPic2;
    data['shopMenuPic3'] = this.shopMenuPic3;
    data['shopMenuPic4'] = this.shopMenuPic4;
    data['shopMenuPic5'] = this.shopMenuPic5;
    data['shopMenuPic6'] = this.shopMenuPic6;
    data['shoptypeId'] = this.shoptypeId;
    return data;
  }
}
