<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilterMobile extends Model
{
    use HasFactory;
    protected $table="filter_mobiles";
    protected $fillable = [
        'mobile_id',
        'attribute_id',
    ];
}
