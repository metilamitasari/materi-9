<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Models\userdetail;
use App\Models\Produk;

class User extends Authenticatable
{

    use  Notifiable;


    function detail() {
    	return $this-> hasOne(userdetail::class,'id_user');
    }

    function Produk(){
    	return $this->hasMany(produk::class,'id_user');
    }

    function getJenisKelaminStringAttribute(){
    	return ($this->jenis_kelamin == 1 )? "laki-laki" : "perempuan";

    }
     
     function setPasswordAttribute($value){
     	$this->attributes['password'] = bcrypt($value);
     }

}

