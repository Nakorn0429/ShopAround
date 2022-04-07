<?php
class Shop
{
    // database connection
    private $conn;

    // object properties
    public $message;
    public $shopId;
    public $shopName;
    public $shopDetail;
    public $shopLatitude;
    public $shopLongtitude;
    public $shopPic;
    public $shopPicPromote1;
    public $shopPicPromote2;
    public $shopPicPromote3;
    public $shopMenu1;
    public $shopMenu2;
    public $shopMenu3;
    public $shopMenu4;
    public $shopMenu5;
    public $shopMenu6;
    public $shopMenuPic1;
    public $shopMenuPic2;
    public $shopMenuPic3;
    public $shopMenuPic4;
    public $shopMenuPic5;
    public $shopMenuPic6;
    public $shoptypeId;
    public $modifyDate;




    // constructor with $db as database connection
    public function __construct($db)
    {
        $this->conn = $db;
    }

    //-------------------------------------
    //get all friend
   
    
    function getallshop()
    {

        // select all query
        $query = "SELECT * FROM shop_tb";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    function getallshopfood()
    {

        // select all query
        $query = "SELECT * FROM shop_tb WHERE shoptypeId = '1';";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    function getallshopdrink()
    {

        // select all query
        $query = "SELECT * FROM shop_tb WHERE shoptypeId = '2';";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    function getallshopcandy()
    {

        // select all query
        $query = "SELECT * FROM shop_tb WHERE shoptypeId = '3';";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    function getallshopshirt()
    {

        // select all query
        $query = "SELECT * FROM shop_tb WHERE shoptypeId = '4';";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    function getallshoppen()
    {

        // select all query
        $query = "SELECT * FROM shop_tb WHERE shoptypeId = '5';";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }
    //-------------------------------------
    //insert friend


    function inserttest()
    {
        // query to insert record
        $query = "INSERT INTO shop_tb SET 
                        shopName=:shopName, 
                        shopDetail=:shopDetail, 
                        shoptypeId=:shoptypeId";


        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->shopName = htmlspecialchars(strip_tags($this->shopName));
        $this->shopDetail = htmlspecialchars(strip_tags($this->shopDetail));
        $this->shoptypeId = htmlspecialchars(strip_tags($this->shoptypeId));
      



        // bind values
        $stmt->bindParam(":shopName", $this->shopName);
        $stmt->bindParam(":shopDetail", $this->shopDetail);
        $stmt->bindParam(":shoptypeId", $this->shoptypeId);
        
        // execute query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    
    function insertshop()
    {
        // query to insert record
        $query = "INSERT INTO shop_tb SET 
                        shopName=:shopName, 
                        shopDetail=:shopDetail, 
                        shopLatitude=:shopLatitude, 
                        shopLongtitude=:shopLongtitude,
                        shopPic=:shopPic,
                        shopPicPromote1=:shopPicPromote1, 
                        shopPicPromote2=:shopPicPromote2,
                        shopPicPromote3=:shopPicPromote3,
                        shopMenu1=:shopMenu1,
                        shopMenu2=:shopMenu2,
                        shopMenu3=:shopMenu3,
                        shopMenu4=:shopMenu4,
                        shopMenu5=:shopMenu5,
                        shopMenu6=:shopMenu6,
                        shopMenuPic1=:shopMenuPic1,
                        shopMenuPic2=:shopMenuPic2,
                        shopMenuPic3=:shopMenuPic3,
                        shopMenuPic4=:shopMenuPic4,
                        shopMenuPic5=:shopMenuPic5,
                        shopMenuPic6=:shopMenuPic6,
                        shoptypeId=:shoptypeId,
                        modifyDate=:modifyDate";


        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->shopName = htmlspecialchars(strip_tags($this->shopName));
        $this->shopDetail = htmlspecialchars(strip_tags($this->shopDetail));
        $this->shopLatitude = htmlspecialchars(strip_tags($this->shopLatitude));
        $this->shopLongtitude = htmlspecialchars(strip_tags($this->shopLongtitude));
        $this->shopPic = htmlspecialchars(strip_tags($this->shopPic));
        $this->shopPicPromote1 = htmlspecialchars(strip_tags($this->shopPicPromote1));
        $this->shopPicPromote2 = htmlspecialchars(strip_tags($this->shopPicPromote2));
        $this->shopPicPromote3 = htmlspecialchars(strip_tags($this->shopPicPromote3));
        $this->shopMenu1 = htmlspecialchars(strip_tags($this->shopMenu1));
        $this->shopMenu2 = htmlspecialchars(strip_tags($this->shopMenu2));
        $this->shopMenu3 = htmlspecialchars(strip_tags($this->shopMenu3));
        $this->shopMenu4 = htmlspecialchars(strip_tags($this->shopMenu4));
        $this->shopMenu5 = htmlspecialchars(strip_tags($this->shopMenu5));
        $this->shopMenu6 = htmlspecialchars(strip_tags($this->shopMenu6));
        $this->shopMenuPic1 = htmlspecialchars(strip_tags($this->shopMenuPic1));
        $this->shopMenuPic2 = htmlspecialchars(strip_tags($this->shopMenuPic2));
        $this->shopMenuPic3 = htmlspecialchars(strip_tags($this->shopMenuPic3));
        $this->shopMenuPic4 = htmlspecialchars(strip_tags($this->shopMenuPic4));
        $this->shopMenuPic5 = htmlspecialchars(strip_tags($this->shopMenuPic5));
        $this->shopMenuPic6 = htmlspecialchars(strip_tags($this->shopMenuPic6));
        $this->shoptypeId = htmlspecialchars(strip_tags($this->shoptypeId));
        $this->modifyDate = htmlspecialchars(strip_tags($this->modifyDate));



        // bind values
        $stmt->bindParam(":shopName", $this->shopName);
        $stmt->bindParam(":shopDetail", $this->shopDetail);
        $stmt->bindParam(":shopLatitude", $this->shopLatitude);
        $stmt->bindParam(":shopLongtitude", $this->shopLongtitude);
        $stmt->bindParam(":shopPic", $this->shopPic);
        $stmt->bindParam(":shopPicPromote1", $this->shopPicPromote1);
        $stmt->bindParam(":shopPicPromote2", $this->shopPicPromote2);
        $stmt->bindParam(":shopPicPromote3", $this->shopPicPromote3);
        $stmt->bindParam(":shopMenu1", $this->shopMenu1);
        $stmt->bindParam(":shopMenu2", $this->shopMenu2);
        $stmt->bindParam(":shopMenu3", $this->shopMenu3);
        $stmt->bindParam(":shopMenu4", $this->shopMenu4);
        $stmt->bindParam(":shopMenu5", $this->shopMenu5);
        $stmt->bindParam(":shopMenu6", $this->shopMenu6);
        $stmt->bindParam(":shopMenuPic1", $this->shopMenuPic1);
        $stmt->bindParam(":shopMenuPic2", $this->shopMenuPic2);
        $stmt->bindParam(":shopMenuPic3", $this->shopMenuPic3);
        $stmt->bindParam(":shopMenuPic4", $this->shopMenuPic4);
        $stmt->bindParam(":shopMenuPic5", $this->shopMenuPic5);
        $stmt->bindParam(":shopMenuPic6", $this->shopMenuPic6);
        $stmt->bindParam(":shoptypeId", $this->shoptypeId);
        $stmt->bindParam(":modifyDate", $this->modifyDate);
        // execute query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    //-----------------------------------        
    // update the friend
    function updateshop()
    {

        // update query
        $query = "UPDATE shop_tb SET
                       shopName=:shopName, 
                       shopDetail=:shopDetail, 
                       shopLatitude=:shopLatitude,
                       shopLongtitude=:shopLongtitude,
                       shopPic=:shopPic,
                       shopPicPromote1=:shopPicPromote1,
                       shopPicPromote2=:shopPicPromote2,
                       shopPicPromote3=:shopPicPromote3,
                       shopMenu1=:shopMenu1,
                       shopMenu2=:shopMenu2,
                       shopMenu3=:shopMenu3,
                       shopMenu4=:shopMenu4,
                       shopMenu5=:shopMenu5,
                       shopMenu6=:shopMenu6,
                       shopMenuPic1=:shopMenuPic1,
                       shopMenuPic2=:shopMenuPic2,
                       shopMenuPic3=:shopMenuPic3,
                       shopMenuPic4=:shopMenuPic4,
                       shopMenuPic5=:shopMenuPic5,
                       shopMenuPic6=:shopMenuPic6
                        WHERE
                        shopId=:shopId";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->shopId = htmlspecialchars(strip_tags($this->shopId));
        $this->shopName = htmlspecialchars(strip_tags($this->shopName));
        $this->shopDetail = htmlspecialchars(strip_tags($this->shopDetail));
        $this->shopLatitude = htmlspecialchars(strip_tags($this->shopLatitude));
        $this->shopLongtitude = htmlspecialchars(strip_tags($this->shopLongtitude));
        $this->shopPic = htmlspecialchars(strip_tags($this->shopPic));
        $this->shopPicPromote1 = htmlspecialchars(strip_tags($this->shopPicPromote1));
        $this->shopPicPromote2 = htmlspecialchars(strip_tags($this->shopPicPromote2));
        $this->shopPicPromote3 = htmlspecialchars(strip_tags($this->shopPicPromote3));
        $this->shopMenu1 = htmlspecialchars(strip_tags($this->shopMenu1));
        $this->shopMenu2 = htmlspecialchars(strip_tags($this->shopMenu2));
        $this->shopMenu3 = htmlspecialchars(strip_tags($this->shopMenu3));
        $this->shopMenu4 = htmlspecialchars(strip_tags($this->shopMenu4));
        $this->shopMenu5 = htmlspecialchars(strip_tags($this->shopMenu5));
        $this->shopMenu6 = htmlspecialchars(strip_tags($this->shopMenu6));
        $this->shopMenuPic1 = htmlspecialchars(strip_tags($this->shopMenuPic1));
        $this->shopMenuPic2 = htmlspecialchars(strip_tags($this->shopMenuPic2));
        $this->shopMenuPic3 = htmlspecialchars(strip_tags($this->shopMenuPic3));
        $this->shopMenuPic4 = htmlspecialchars(strip_tags($this->shopMenuPic4));
        $this->shopMenuPic5 = htmlspecialchars(strip_tags($this->shopMenuPic5));
        $this->shopMenuPic6 = htmlspecialchars(strip_tags($this->shopMenuPic6));



        // bind new values
        $stmt->bindParam(":shopId", intval($this->shopId));
        $stmt->bindParam(":shopName", $this->shopName);
        $stmt->bindParam(":shopDetail", $this->shopDetail);
        $stmt->bindParam(":shopLatitude", $this->shopLatitude);
        $stmt->bindParam(":shopLongtitude", $this->shopLongtitude);
        $stmt->bindParam(":shopPic", $this->shopPic);
        $stmt->bindParam(":shopPicPromote1", $this->shopPicPromote1);
        $stmt->bindParam(":shopPicPromote2", $this->shopPicPromote2);
        $stmt->bindParam(":shopPicPromote3", $this->shopPicPromote3);
        $stmt->bindParam(":shopMenu1", $this->shopMenu1);
        $stmt->bindParam(":shopMenu2", $this->shopMenu2);
        $stmt->bindParam(":shopMenu3", $this->shopMenu3);
        $stmt->bindParam(":shopMenu4", $this->shopMenu4);
        $stmt->bindParam(":shopMenu5", $this->shopMenu5);
        $stmt->bindParam(":shopMenu6", $this->shopMenu6);
        $stmt->bindParam(":shopMenuPic1", $this->shopMenuPic1);
        $stmt->bindParam(":shopMenuPic2", $this->shopMenuPic2);
        $stmt->bindParam(":shopMenuPic3", $this->shopMenuPic3);
        $stmt->bindParam(":shopMenuPic4", $this->shopMenuPic4);
        $stmt->bindParam(":shopMenuPic5", $this->shopMenuPic5);
        $stmt->bindParam(":shopMenuPic6", $this->shopMenuPic6);
        


        // execute the query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }

    //----------------------------------- 
    // delete the friend
    function deletefood()
    {

        // delete query
        $query = "DELETE FROM food_tb  WHERE food_Id=:food_Id";

        // prepare query
        $stmt = $this->conn->prepare($query);

        // sanitize
        $this->food_Id = htmlspecialchars(strip_tags($this->food_Id));

        // bind id of record to delete
        $stmt->bindParam(':food_Id', intval($this->food_Id));

        // execute query
        if ($stmt->execute()) {
            return true;
        }

        return false;
    }



    //----------------------------------

}
