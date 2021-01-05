<?php

namespace App\Models;

class Produk extends Model{
	protected $table = 'produk';

	protected $dates = ['created_at'];
	protected $casts = ['berat' => 'decimal:2'];

function seller(){
	return $this->belongsTo(user::class,'id_user');
    }

    function getHargaAttribute(){
    	return "Rp.".number_format($this->attributes['harga']);
    }
    
}
