<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    // Tentukan tabel yang digunakan
    protected $table = 'contacts';

    // Tentukan kolom yang boleh diisi
    protected $fillable = ['name', 'email', 'message'];
}
