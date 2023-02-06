<?php

use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\MobileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('employee/create', [EmployeeController::class, 'create']);
// Route::get('filter/generate', [MobileController::class, 'filterCreate']);
Route::get('mobile/generate', [MobileController::class, 'create']);
