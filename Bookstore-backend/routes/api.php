<?php

use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsersController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// user manage
Route::resource('users',UsersController::class);

// get user by id
Route::get('users/{user}', [UsersController::class, 'show']);
// update phone number by id
Route::post('users/updatePhoneNumber', [UsersController::class, 'updatePhoneNumber']);
// update email by id
Route::post('users/updateEmail', [UsersController::class, 'updateEmail']);
// update password by id
Route::post('users/updatePassword', [UsersController::class, 'updatePassword']);
// update user by id
Route::post('users/updateDetails', [UsersController::class, 'updateDetails']);

// save bank account
Route::post('saveBankAccount', [UsersController::class, 'saveBankAccount']);


Route::post('product/detail', [ProductController::class, 'GetProduct']);
Route::post('product/ratings', [ProductController::class, 'GetTopRating']);
Route::post('product/all-rating', [ProductController::class, 'GetAllRating']);
Route::post('product/insertRating', [ProductController::class, 'InsertRating']);
