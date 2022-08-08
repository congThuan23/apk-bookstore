<?php
    require "dbCon.php";

    $idcategory = $_GET['idcategory'];

    $query = "SELECT id, productImg, name, price
                FROM product INNER JOIN categorydetail ON product.id = categorydetail.idProduct
                WHERE idCategory = $idcategory
                GROUP BY id";
    $data = mysqli_query($connect, $query);
    
    class Product{
        public $id;
        public $productImg;
        public $name;
        public $price;
        public function __construct($id, $productImg, $name, $price){
            $this->id = $id;
            $this->productImg = $productImg;
            $this->name = $name;
            $this->price = $price;
        }
    }

    $mangProduct = array();
    while($row = mysqli_fetch_assoc($data)){
        $pd = new Product($row['id'], $row['productImg'], $row['name'], $row['price']);
        $mangProduct[] = $pd;
    }

    echo json_encode($mangProduct);
?>