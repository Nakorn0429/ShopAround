<?php
 include "databaseupload.php";


 $food_ImageMenu = $_FILES['$food_ImageMenu']['name'];
 $title = $_POST['title'];
 $food_Name = $_POST['food_Name'];



 $imageNS = explode('.', $_FILES['food_ImageMenu']['name']);
 $newImageName = md5(uniqid(rand(), true)) . '.' . $imageNS[1];
 $imagePath = "image/".$newImageName;
 move_uploaded_file($_FILES['food_ImageMenu']['tmp_name'],$imagePath);
 
 $food_ImageMenu = $newImageName;
 
 $connect->query ("INSERT INTO food_tb (title,food_ImageMenu,food_Name) VALUES ('".$title."', '".$food_ImageMenu."','".$food_Name."')");
 




?>