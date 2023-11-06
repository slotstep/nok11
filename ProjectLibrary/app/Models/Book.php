<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Borrowing;


class Book extends Model
{
    use HasFactory;

    public function borrowings()
{
    return $this->hasMany(Borrowing::class);
}
     public function user(){

     return $this->belongsTo(User::class);
     }

    
}
