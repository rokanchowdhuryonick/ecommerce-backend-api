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
    protected $appends = [
        'photo_path',
        'filters'
    ];

    public function filterAttributes(){
        return $this->hasMany(FilterMobile::class, 'mobile_id');
    }

    public function getPhotoPathAttribute(){
        return asset("Uploads/Images/".$this->mobile_photo);
    }

    public function getFiltersAttribute(){
        return $this->belongsToMany(FilterAttribute::class, 'filter_mobiles', 'mobile_id', 'attribute_id')->get();
        // hasManT
    }

    
}
