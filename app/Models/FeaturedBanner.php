<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FeaturedBanner extends Model
{
    protected $fillable = ['link','photo','title'];

    public $timestamps = false;
}