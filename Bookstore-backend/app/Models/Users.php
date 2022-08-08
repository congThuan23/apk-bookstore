<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    public $timestamps = false; //set time to false
    protected $fillable = [
        'name', 'email','password','phoneNumber','dateOfBirth','gender','avatarImg','numberOfCoins'
    ];
    protected $primaryKey = 'id';
    protected $table = 'users';
}
