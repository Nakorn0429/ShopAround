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
$data = json_decode(file_get_contents("php://input"));

// read friend will be here
// query friend
$stmt = $shop->getallshopdrink();
$num = $stmt->rowCount();

$shop_arr = array();

if ($num > 0) {


    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        // extract row
        extract($row);

        $shop_item = array(
            "shopId" => $shopId,
            "shopName" => $shopName,
            "shopDetail" => $shopDetail,
            "shopLatitude" => $shopLatitude,
            "shopLongtitude" => $shopLongtitude,
            "shopPic" => $shopPic,
            "shopPicPromote1" => $shopPicPromote1,
            "shopPicPromote2" => $shopPicPromote2,
            "shopPicPromote3" => $shopPicPromote3,
            "shopMenu1" => $shopMenu1,
            "shopMenu2" => $shopMenu2,
            "shopMenu3" => $shopMenu3,
            "shopMenu4" => $shopMenu4,
            "shopMenu5" => $shopMenu5,
            "shopMenu6" => $shopMenu6,
            "shopMenuPic1" => $shopMenuPic1,
            "shopMenuPic2" => $shopMenuPic2,
            "shopMenuPic3" => $shopMenuPic3,
            "shopMenuPic4" => $shopMenuPic4,
            "shopMenuPic5" => $shopMenuPic5,
            "shopMenuPic6" => $shopMenuPic6,
            "modifyDate" => $modifyDate
        );

        array_push($shop_arr, $shop_item);
    }

    http_response_code(200);
    echo json_encode($shop_arr);
} else if ($num == 0) {
    $shop_item = array(
        "message" => "2"
    );

    array_push($shop_arr, $shop_item);
    http_response_code(200);
    echo json_encode($shop_arr);
} else {
    $shop_item = array(
        "message" => "3"
    );

    array_push($shop_arr, $shop_item);
    http_response_code(503);
    echo json_encode($shop_arr);
}
