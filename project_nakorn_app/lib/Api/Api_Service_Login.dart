class Login {
  String message;
  String loginId;
  String loginUsername;
  String loginPassword;
  String loginEmail;
  String loginImage;
  String loginStatus;

  Login(
      {this.message,
        this.loginId,
        this.loginUsername,
        this.loginPassword,
        this.loginEmail,
        this.loginImage,
      this.loginStatus});

  Login.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    loginId = json['Login_Id'];
    loginUsername = json['Login_Username'];
    loginPassword = json['Login_Password'];
    loginEmail = json['Login_Email'];
    loginImage = json['Login_Image'];
    loginStatus = json['Login_Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['Login_Id'] = this.loginId;
    data['Login_Username'] = this.loginUsername;
    data['Login_Password'] = this.loginPassword;
    data['Login_Email'] = this.loginEmail;
    data['Login_Image'] = this.loginImage;
    data['Login_Status'] = this.loginStatus;
    return data;
  }
}

//---------------------------------------------------------------------------------
//register

class Register {
  String resId;
  String resName;
  String resEmail;
  String resAddress;
  String resPhonnumber;
  String resStatus;

  Register(
      {this.resId,
        this.resName,
        this.resEmail,
        this.resAddress,
        this.resPhonnumber,
        this.resStatus});

  Register.fromJson(Map<String, dynamic> json) {
    resId = json['res_Id'];
    resName = json['res_Name'];
    resEmail = json['res_Email'];
    resAddress = json['res_Address'];
    resPhonnumber = json['res_Phonnumber'];
    resStatus = json['res_Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res_Id'] = this.resId;
    data['res_Name'] = this.resName;
    data['res_Email'] = this.resEmail;
    data['res_Address'] = this.resAddress;
    data['res_Phonnumber'] = this.resPhonnumber;
    data['res_Status'] = this.resStatus;
    return data;
  }
}