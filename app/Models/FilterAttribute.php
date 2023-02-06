<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilterAttribute extends Model
{
    use HasFactory;
    protected $table="filter_attributes";
    protected $fillable = [
        'filter_id',
        'attribute',
    ];
}
