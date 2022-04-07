<?php
    // required headers
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    // database connection will be here
    // include database and object files
    include_once '../database.php';
    include_once 'shop.php';

     // instantiate database and friend object
     $database = new Database();
     $db = $database->getConnection();
 
     // initialize object
     $shop = new Shop($db);

    // get posted data
    $data = json_decode(file_get_contents("php://input"));

    // set friend property values
    $shop->shopName = $data->shopName;
    $shop->shopDetail = $data->shopDetail;
    $shop->shopLatitude = $data->shopLatitude;
    $shop->shopLongtitude = $data->shopLongtitude;    
    $shop->shopMenu1 = $data->shopMenu1;
    $shop->shopMenu2 = $data->shopMenu2;
    $shop->shopMenu3 = $data->shopMenu3;
    $shop->shopMenu4 = $data->shopMenu4;
    $shop->shopMenu5 = $data->shopMenu5;
    $shop->shopMenu6 = $data->shopMenu6;

    //--------------
    $shop->shopPic = time() . '_' . uniqid() . ".jpg"; //ตั้งชื่อรูป
    $shopPic_a = base64_decode($data->shopPic); //เอารูปที่ส่งมา (base64) แปลงกับเป็นรูปเก็บในตัวแปร
    file_put_contents("images/" . $shop->shopPic  , $shopPic_a  ); //file_put_contents(path/ชื่อรูป , รูป)
    //--------------
    $shop->shopPicPromote1 = time() . '_' . uniqid() . ".jpg";
    $shopPicPromote1_a = base64_decode($data->shopPicPromote1);
    file_put_contents("promotions/" . $shop->shopPicPromote1  , $shopPicPromote1_a  );
    
    $shop->shopPicPromote2 = time() . '_' . uniqid() . ".jpg";
    $shopPicPromote2_a = base64_decode($data->shopPicPromote2);
    file_put_contents("promotions/" . $shop->shopPicPromote2  , $shopPicPromote2_a  );
    
    $shop->shopPicPromote3 = time() . '_' . uniqid() . ".jpg";
    $shopPicPromote3_a = base64_decode($data->shopPicPromote3);
    file_put_contents("promotions/" . $shop->shopPicPromote3  , $shopPicPromote3_a  );
    //--------------
    $shop->shopMenuPic1 = time() . '_' . uniqid() . ".jpg";
    $shopMenuPic1_a = base64_decode($data->shopMenuPic1);
    file_put_contents("picmenu/" . $shop->shopMenuPic1  , $shopMenuPic1_a  );

    $shop->shopMenuPic2 = time() . '_' . uniqid() . ".jpg";
    $shopMenuPic2_a = base64_decode($data->shopMenuPic2);
    file_put_contents("picmenu/" . $shop->shopMenuPic2  , $shopMenuPic2_a  );

    $shop->shopMenuPic3 = time() . '_' . uniqid() . ".jpg";
    $shopMenuPic3_a = base64_decode($data->shopMenuPic3);
    file_put_contents("picmenu/" . $shop->shopMenuPic3  , $shopMenuPic3_a  );

    $shop->shopMenuPic4 = time() . '_' . uniqid() . ".jpg";
    $shopMenuPic4_a = base64_decode($data->shopMenuPic4);
    file_put_contents("picmenu/" . $shop->shopMenuPic4  , $shopMenuPic4_a  );

    $shop->shopMenuPic5 = time() . '_' . uniqid() . ".jpg";
    $shopMenuPic5_a = base64_decode($data->shopMenuPic5);
    file_put_contents("picmenu/" . $shop->shopMenuPic5  , $shopMenuPic5_a  );

    $shop->shopMenuPic6 = time() . '_' . uniqid() . ".jpg";
    echo $data->showMenuPic6;
    $shopMenuPic6_a = base64_decode($data->showMenuPic6);
    file_put_contents("picmenu/" . $shop->shopMenuPic6  , $shopMenuPic6_a  );

    $shop->shoptypeId = $data->shoptypeId;
    $shop->modifyDate = date('Y-m-d h:i:sa');
    
// insert the friend
    if($shop->insertshop()){    
        // set response code - 200 created
        http_response_code(200);

        // tell the user
        echo json_encode(array("message" => "1"));
    }else{
        // set response code - 503 service unavailable
        http_response_code(503);

        // tell the user
        echo json_encode(array("message" => "2"));
    }
