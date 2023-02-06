<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Filter extends Model
{
    use HasFactory;
    protected $table="filters";
    protected $fillable = [
        'filter_type',
    ];
    public function attributes()
    {
        return $this->hasMany(FilterAttribute::class);
    }
}
