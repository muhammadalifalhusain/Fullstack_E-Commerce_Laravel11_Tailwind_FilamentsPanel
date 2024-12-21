<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class PromoCode extends Model
{
    //
    use HasFactory;

    // Menambahkan kolom-kolom yang boleh di-mass assign
    protected $fillable = [
        'code',           // Kolom untuk kode promo
        'discount_amount', // Kolom untuk jumlah diskon
    ];
}
