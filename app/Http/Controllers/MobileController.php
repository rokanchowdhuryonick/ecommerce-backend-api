<?php

namespace App\Http\Controllers;

use App\Models\Filter;
use App\Models\FilterAttribute;
use App\Models\Mobile;
use Illuminate\Http\Request;

class MobileController extends Controller
{
    public function filterCreate(){
        $f1 = Filter::create(['filter_type'=>'Color']);
        $f2 = Filter::create(['filter_type'=>'Storage']);

        $f1->attributes()->create(['attribute'=>'Gold']);
        $f1->attributes()->create(['attribute'=>'Silver']);
        $f1->attributes()->create(['attribute'=>'Pacific Blue']);

        $f2->attributes()->create(['attribute'=>'128GB']);
        $f2->attributes()->create(['attribute'=>'256GB']);
        $f2->attributes()->create(['attribute'=>'512GB']);
        echo "Filter Generated";
    }

    public function create(){
        $mobiles = [
            ['mobile_name'=>'Samsung Galaxy A5', 'mobile_photo'=>'samsung-a5-1.jpg'],
            ['mobile_name'=>'OPPO A5', 'mobile_photo'=>'Oppo-A5-2020-500x500.jpg'],
            ['mobile_name'=>'Vivo 5G', 'mobile_photo'=>'Vivo-Y55s-5G-2023-Gradient-300x300.jpg'],
            ['mobile_name'=>'Test Phone', 'mobile_photo'=>'samsung-a5-1.jpg'],
        ];

        

        foreach($mobiles as $mobile){
            $f1 = FilterAttribute::find(rand(1,6));
            print_r($f1);
            $mobileCreated = Mobile::create($mobile);
            $mobileCreated->attributes()->save($f1);
            if($mobileCreated){
                echo $mobile['mobile_name']." Mobile created filter added <br>";
            }

        }

    }
}
