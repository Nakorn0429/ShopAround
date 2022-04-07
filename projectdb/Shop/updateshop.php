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
    
    // set ID property of friend to be edited
    $shop->shopId = $data->shopId;
    
    // set friend property values
    $shop->shopName = $data->shopName;
    $shop->shopDetail = $data->shopDetail;
    $shop->shopLatitude = $data->shopLatitude;
    $shop->shopLongtitude = $data->shopLongtitude;
    $shop->shopPic = $data->shopPic;
    $shop->shopPicPromote1 = $data->shopPicPromote1;
    $shop->shopPicPromote2 = $data->shopPicPromote2;
    $shop->shopPicPromote3 = $data->shopPicPromote3;
    $shop->shopMenu1 = $data->shopMenu1;
    $shop->shopMenu2 = $data->shopMenu2;
    $shop->shopMenu3 = $data->shopMenu3;
    $shop->shopMenu4 = $data->shopMenu4;
    $shop->shopMenu5 = $data->shopMenu5;
    $shop->shopMenu6 = $data->shopMenu6;
    $shop->shopMenuPic1 = $data->shopMenuPic1;
    $shop->shopMenuPic2 = $data->shopMenuPic2;
    $shop->shopMenuPic3 = $data->shopMenuPic3;
    $shop->shopMenuPic4 = $data->shopMenuPic4;
    $shop->shopMenuPic5 = $data->shopMenuPic5;
    $shop->shopMenuPic6 = $data->shopMenuPic6;
    
    // update the friend
    if($shop->updateshop()){    
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
?>