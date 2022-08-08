<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function GoiY(Request $request) {

    }

    public function InsertRating(Request $request)
    {
         return DB::table('rating')->insert(
            [
                'productID' => $request->productID,
                'userID' => $request->userID,
                'detail' => $request->detail,
                'amountOfStars' => $request->amountOfStars,
            ]
        );
    }

    public function GetTopRating(Request $request): \Illuminate\Http\JsonResponse
    {
        return response()->json(
            DB::table('rating')
                ->join('users', 'users.id', '=', 'rating.userID')
                ->where('productID', $request->id)
                ->limit(3)
                ->orderByDesc('ratingTime')
                ->select(['avatarImg AS avt', 'name', 'ratingTime AS date', 'detail AS cmt', 'amountOfStars as rating'])
                ->get()
        );
    }



    public function GetAllRating(Request $request): \Illuminate\Http\JsonResponse
    {
        return response()->json(
            DB::table('rating')
                ->join('users', 'users.id', '=', 'rating.userID')
                ->where('productID', $request->id)
                ->orderByDesc('ratingTime')
                ->select(['avatarImg AS avt', 'name', 'ratingTime AS date', 'detail AS cmt', 'amountOfStars as rating'])
                ->get()
        );
    }

    public function GetProduct(Request $request): \Illuminate\Http\JsonResponse
    {
        return response()->json(
            DB::select("SELECT
                p.id,
                p.name,
                `publisher`,
                `publishDate`,
                `pageNumber`,
                `language`,
                `productImg`,
                p.introduction,
                `price`,
                `view`,
                a.name author,
                a.introduction authorIntro,
                AVG(r.amountOfStars) star,
                r1.slDG,
                rc.idProduct bought,
                GROUP_CONCAT(c.name SEPARATOR ', ') cate
            FROM
                `product` p
            LEFT JOIN authordetail ad  on p.id = ad.idProduct
            LEFT JOIN author a on ad.idAuthor = a.id
            LEFT JOIN (SELECT productID, COUNT(rating.ratingTime) slDG FROM `rating` GROUP BY rating.productID) r1 on r1.productID = p.id
            LEFT JOIN rating r on r.productID = p.id
            LEFT JOIN receipt rc on rc.idProduct = p.id
            AND rc.idUser = ". $request->idUser ."
            LEFT JOIN categorydetail cd on cd.idProduct = p.id
            LEFT JOIN category c on c.id = cd.idCategory
            WHERE p.id = ". $request->idProduct ."
            GROUP BY p.id,
                p.name,
                `publisher`,
                `publishDate`,
                `pageNumber`,
                `language`,
                `productImg`,
                p.introduction,
                `price`,
                `view`,
                a.name,
                r1.slDG,
                a.introduction,
                bought")[0]
        );
    }
}
