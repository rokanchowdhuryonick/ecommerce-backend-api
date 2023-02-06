<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mobile extends Model
{
    use HasFactory;
    protected $table="mobiles";
    protected $fillable = [
        'mobile_name',
        'mobile_photo',
    ];

    public function attributes(){
        return $this->hasMany(FilterMobile::class, 'attribute_id');
    }
}
