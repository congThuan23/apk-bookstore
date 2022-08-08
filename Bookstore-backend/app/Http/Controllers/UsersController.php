<?php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\Http\Request;
use App\Http\Resources\UsersResource;
use App\Http\Controllers\Api;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Users::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($user)
    {
        /*return new UsersResource(Users::find($user));*/
        return response()->json(DB::table('users')->where('id',$user)->first());
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($user)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $data = array();
        $data['name'] = $request->name;
        $data['email'] = $request->email;
        $data['password'] = $request->password;
        $data['phoneNumber'] = $request->phoneNumber;
        $data['dateOfBirth'] = $request->dateOfBirth;
        $data['gender'] = $request->gender;
        $data['avatarImg'] = $request->avatarImg;
        $data['numberOfCoins'] = $request->numberOfCoins;

        $result = DB::table('users')->where('id',$request->id)->update($data);

        return response()->json($result);
    }

    public function updatePhoneNumber(Request $request)
    {
        $data = array();

        $data['phoneNumber'] = $request->phoneNumber;
        $result = DB::table('users')->where('id',$request->id)->update($data);

        return response()->json($result);
    }

    public function updateEmail(Request $request)
    {
        $data = array();

        $data['email'] = $request->email;
        $result = DB::table('users')->where('id',$request->id)->update($data);

        return response()->json($result);
    }

    public function updatePassword(Request $request)
    {
        $data = array();

        $data['password'] = $request->password;
        $result = DB::table('users')->where('id',$request->id)->update($data);

        return response()->json($result);
    }

    public function updateDetails(Request $request)
    {
        $data = array();

        $data['name'] = $request->name;
        $data['gender'] = $request->gender;
        $data['dateOfBirth'] = $request->dateOfBirth;

        $result = DB::table('users')->where('id',$request->id)->update($data);

        return response()->json($result);
    }

    public function saveBankAccount(Request $request)
    {
        $data = array();

        $data['IdUser'] = $request->IdUser;
        $data['accountNumber'] = $request->accountNumber;
        $data['bankID'] = $request->bankID;

        $result = DB::table('bank_account')->insert($data);

        return response()->json($result);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($user)
    {
        //
    }

}
