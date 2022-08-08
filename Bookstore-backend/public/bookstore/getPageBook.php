<?php
    require "dbCon.php";

    $idproduct = $_GET['idproduct'];

    $query = "SELECT imageName
                FROM product RIGHT JOIN productpage ON product.id = productpage.idProduct
                LEFT JOIN page ON productpage.idPage = page.id
                WHERE product.id = $idproduct
                ORDER BY productpage.number ASC";
    $data = mysqli_query($connect, $query);
    
    class Product{
        public $imageName;
        public function __construct($imageName){
            $this->imageName = $imageName;
        }
    }

    $mangProduct = array();
    while($row = mysqli_fetch_assoc($data)){
        $pd = new Product($row['imageName']);
        $mangProduct[] = $pd;
    }

    echo json_encode($mangProduct);
?>