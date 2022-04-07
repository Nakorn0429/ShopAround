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
