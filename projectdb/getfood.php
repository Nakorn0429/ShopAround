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
$data = json_decode(file_get_contents("php://input"));

// read friend will be here
// query friend
$stmt = $food->getfood();
$num = $stmt->rowCount();

$food_arr = array();

if ($num > 0) {


    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        // extract row
        extract($row);

        $food_item = array(
            "food_Id" => $food_Id,
            "food_Name" => $food_Name,
            "food_Subname" => $food_Subname,
            "food_Rate" => $food_Rate,
            "food_Kilomate" => $food_Kilomate,
            "food_Status" => $food_Status,
            "food_ImagePromotion" => $food_ImagePromotion,
            "food_ImageMenu" => $food_ImageMenu,
            "food_NameMenu" => $food_NameMenu
        );

        array_push($food_arr, $food_item);
    }

    http_response_code(200);
    echo json_encode($food_arr);
} else if ($num == 0) {
    $food_item = array(
        "message" => "2"
    );

    array_push($food_arr, $food_item);
    http_response_code(200);
    echo json_encode($drink_arr);
} else {
    $food_item = array(
        "message" => "3"
    );

    array_push($food_arr, $food_item);
    http_response_code(503);
    echo json_encode($food_arr);
}
