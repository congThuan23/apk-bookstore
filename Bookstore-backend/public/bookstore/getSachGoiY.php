<?php
    require "dbCon.php";

    $query = "SELECT * FROM product";
    $data = mysqli_query($connect, $query);
    
    class Product{
        public $id;
        public $name;
        public $publisher;
        public $publishDate;
        public $pageNumber;
        public $language;
        public $productImg;
        public $introduction;
        public $view;
        public $price;
        public function __construct($id, $name, $publisher, $publishDate, $pageNumber, $language, $productImg, $introduction, $view, $price){
            $this->id = $id;
            $this->name = $name;
            $this->publisher = $publisher;
            $this->publishDate = $publishDate;
            $this->pageNumber = $pageNumber;
            $this->language = $language;
            $this->productImg = $productImg;
            $this->introduction = $introduction;
            $this->view = $view;
            $this->price = $price;
        }
    }

    $mangProduct = array();
    while($row = mysqli_fetch_assoc($data)){
        $pd = new Product($row['id'], $row['name'], $row['publisher'], $row['publishDate'], $row['pageNumber'], $row['language'], $row['productImg'], $row['introduction'], $row['view'], $row['price']);
        $mangProduct[] = $pd;
    }

    echo json_encode($mangProduct);
?>