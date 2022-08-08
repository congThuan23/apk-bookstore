<?php
    require "dbCon.php";
    $iduser = $_GET['iduser'];
    $sx = $_GET['sx'];
    //name purchaseTime authorname
    if($sx == "purchaseTime"){
        $sx = $sx." DESC";
    }
    else{
        $sx = $sx." ASC";
    }
    $query = "SELECT receipt.idProduct, receipt.idUser, product.name, productImg, concat(author.name, ', ') as authorname
            FROM users
            RIGHT JOIN receipt ON users.id = receipt.idUser 
            LEFT JOIN product ON idProduct = product.id
            LEFT JOIN authordetail ON product.id = authordetail.idProduct
            LEFT JOIN author ON authordetail.idAuthor = author.id
            WHERE users.id = $iduser
            GROUP BY receipt.idProduct
            ORDER BY $sx";
    
    $data = mysqli_query($connect, $query);
    
    class Product{
        public $idProduct;
        public $idUser;
        public $name;
        public $productImg;
        public $authorname;
        public function __construct($idProduct, $idUser, $name, $productImg, $authorname){
            $this->idProduct = $idProduct;
            $this->idUser = $idUser;
            $this->name = $name;
            $this->productImg = $productImg;
            $this->authorname = $authorname;
        }
    }

    $mangProduct = array();
    while($row = mysqli_fetch_assoc($data)){
        $pd = new Product($row['idProduct'], $row['idUser'], $row['name'], $row['productImg'], $row['authorname']);
        $mangProduct[] = $pd;
    }

    echo json_encode($mangProduct);
?>