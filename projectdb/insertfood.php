<?php
    // required headers
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    // database connection will be here
    // include database and object files
    include_once 'database.php';
    include_once 'foodpr.php';

     // instantiate database and friend object
     $database = new Database();
     $db = $database->getConnection();
 
     // initialize object
     $food = new Food($db);

    // get posted data
    $data = json_decode(file_get_contents("php://input"));

    // set friend property values
    $food->food_Name = $data->food_Name;
    $food->food_Subname = $data->food_Subname;
    $food->food_Rate = $data->food_Rate;
    $food->food_Kilomate = $data->food_Kilomate;
    $food->food_Status = $data->food_Status;
    $food->food_ImagePromotion = $data->food_ImagePromotion;
    $food->food_ImageMenu = $data->food_ImageMenu;
    $food->food_NameMenu = $data->food_NameMenu;
   

    // insert the friend
    if($food->insertfood()){    
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