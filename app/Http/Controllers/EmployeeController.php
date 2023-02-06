<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    public function create(){
        $users = [
            ['name'=>'First Employee', 'salary'=>'45000'],
            ['name'=>'Second Employee', 'salary'=>'47500'],
            ['name'=>'Third Employee', 'salary'=>'50500'],
            ['name'=>'Fourth Employee', 'salary'=>'55000'],
        ];
        foreach($users as $user){
            $created = Employee::create($user);

            if($created){
                echo "Done with ".$user['name']."<br>";
            }else{
                echo "Failed to generate user ".$user['name']."<br>";
            }
        }

    }
    
    public function list(){
        $list = Employee::all();
        return response()->json($list);
    }
}
