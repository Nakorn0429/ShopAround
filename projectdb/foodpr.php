<?php
    class Food{
        // database connection
        private $conn;
        
        // object properties
        public $message;
        public $food_Id;
        public $food_Name;
        public $food_Subname;
        public $food_Rate;
        public $food_Kilomate;
        public $food_Status;
        public $food_ImagePromotion;
        public $food_ImageMenu;
        public $food_NameMenu;
        
    
        // constructor with $db as database connection
        public function __construct($db){
            $this->conn = $db;
        }

        //-------------------------------------
        //get all friend
        function getfood(){

            // select all query
            $query = "SELECT * FROM food_tb";
        
            // prepare query statement
            $stmt = $this->conn->prepare($query);
        
            // execute query
            $stmt->execute();
        
            return $stmt;
        }

        //-------------------------------------
        //insert friend
        function insertfood(){
            // query to insert record
            $query = "INSERT INTO food_tb SET 
                       food_Name=:food_Name, 
                       food_Subname=:food_Subname, 
                       food_Rate=:food_Rate,
                       food_Kilomate=:food_Kilomate,
                       food_Status=:food_Status,
                       food_ImagePromotion=:food_ImagePromotion,
                       food_ImageMenu=:food_ImageMenu,
                       food_NameMenu=:food_NameMenu";
                        

            // prepare query
            $stmt = $this->conn->prepare($query);

             // sanitize
             $this->food_Name=htmlspecialchars(strip_tags($this->food_Name));
             $this->food_Subname=htmlspecialchars(strip_tags($this->food_Subname));
             $this->food_Rate=htmlspecialchars(strip_tags($this->food_Rate));
             $this->food_Kilomate=htmlspecialchars(strip_tags($this->food_Kilomate));
             $this->food_Status=htmlspecialchars(strip_tags($this->food_Status));
             $this->food_ImagePromotion=htmlspecialchars(strip_tags($this->food_ImagePromotion));
             $this->food_ImageMenu=htmlspecialchars(strip_tags($this->food_ImageMenu));
             $this->food_NameMenu=htmlspecialchars(strip_tags($this->food_NameMenu));
             

            // bind values
            $stmt->bindParam(":food_Name", $this->food_Name);
            $stmt->bindParam(":food_Subname", $this->food_Subname);
            $stmt->bindParam(":food_Rate", $this->food_Rate);
            $stmt->bindParam(":food_Kilomate", $this->food_Kilomate);
            $stmt->bindParam(":food_Status", $this->food_Status);
            $stmt->bindParam(":food_ImagePromotion", $this->food_ImagePromotion);
            $stmt->bindParam(":food_ImageMenu", $this->food_ImageMenu);
            $stmt->bindParam(":food_NameMenu", $this->food_NameMenu);
            

            // execute query
            if($stmt->execute()){
                return true;
            }

            return false;
        }

        //-----------------------------------        
        // update the friend
        function updatefood(){
        
            // update query
            $query = "UPDATE food_tb SET
                        food_Name=:food_Name, 
                       food_Subname=:food_Subname, 
                       food_Rate=:food_Rate
                       food_Kilomate=:food_Kilomate
                       food_Status=:food_Status
                       food_ImagePromotion=:food_ImagePromotion
                       food_ImageMenu=:food_ImageMenu
                       food_NameMenu=:food_NameMenu
                        WHERE
                        food_Id=:food_Id";
        
            // prepare query statement
            $stmt = $this->conn->prepare($query);
        
            // sanitize
            $this->food_Id=htmlspecialchars(strip_tags($this->food_Id));
            $this->food_Name=htmlspecialchars(strip_tags($this->food_Name));
            $this->food_Subname=htmlspecialchars(strip_tags($this->food_Subname));
            $this->food_Rate=htmlspecialchars(strip_tags($this->food_Rate));
            $this->food_Kilomate=htmlspecialchars(strip_tags($this->food_Kilomate));
            $this->food_Status=htmlspecialchars(strip_tags($this->food_Status));
            $this->food_ImagePromotion=htmlspecialchars(strip_tags($this->food_ImagePromotion));
            $this->food_ImageMenu=htmlspecialchars(strip_tags($this->food_ImageMenu));
            $this->food_NameMenu=htmlspecialchars(strip_tags($this->food_NameMenu));
            
            
        
            // bind new values
            $stmt->bindParam(":food_Id", intval($this->food_Id));
            $stmt->bindParam(":food_Name", $this->food_Name);
            $stmt->bindParam(":food_Subname", $this->food_Subname);
            $stmt->bindParam(":food_Rate", $this->food_Rate);
            $stmt->bindParam(":food_Kilomate", $this->food_Kilomate);
            $stmt->bindParam(":food_Status", $this->food_Status);
            $stmt->bindParam(":food_ImagePromotion", $this->food_ImagePromotion);
            $stmt->bindParam(":food_ImageMenu", $this->food_ImageMenu);
            $stmt->bindParam(":food_NameMenu", $this->food_NameMenu);
            
        
            // execute the query
            if($stmt->execute()){
                return true;
            }
        
            return false;
        }

        //----------------------------------- 
        // delete the friend
        function deletefood(){
        
            // delete query
            $query = "DELETE FROM food_tb  WHERE food_Id=:food_Id";
        
            // prepare query
            $stmt = $this->conn->prepare($query);
        
            // sanitize
            $this->food_Id=htmlspecialchars(strip_tags($this->food_Id));
        
            // bind id of record to delete
            $stmt->bindParam(':food_Id', intval($this->food_Id));
        
            // execute query
            if($stmt->execute()){
                return true;
            }
        
            return false;            
        }



        //----------------------------------

    }

?>