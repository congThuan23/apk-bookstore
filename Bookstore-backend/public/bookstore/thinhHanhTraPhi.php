<?php
    require "dbCon.php";

    $query = "SELECT id, productImg, name, publisher, view, price 
                FROM product WHERE price > 0 
                ORDER BY view DESC LIMIT 10";
    $data = mysqli_query($connect, $query);
    
    class Product{
        public $id;
        public $productImg;
        public $name;
        public $publisher;
        public $view;
        public $price;
        public function __construct($id, $productImg, $name,  $publisher, $view, $price){
            $this->id = $id;
            $this->productImg = $productImg;
            $this->name = $name;
            $this->publisher = $publisher;
            $this->view = $view;
            $this->price = $price;
        }
    }

    $mangProduct = array();
    while($row = mysqli_fetch_assoc($data)){
        $pd = new Product($row['id'], $row['productImg'], $row['name'], $row['publisher'], $row['view'], $row['price']);
        $mangProduct[] = $pd;
    }

    echo json_encode($mangProduct);
?>