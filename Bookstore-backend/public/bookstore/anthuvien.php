<?php
    require "dbCon.php";
    $productID = $_POST['productID'];
    $userID = $_POST['userID'];
    $status = $_POST['status'];
    if($status == 1)
        $status = 0;
    else
        $status = 1;
    $query = "UPDATE receipt SET STATUS = $status WHERE productID = '$productID' AND userID = '$userID'";
    if(mysqli_query($connect, $query)){
        echo "success";
    }else{
        echo "error";
    }
?>