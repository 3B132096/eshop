<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::resource('products', ProductController::class);
/*
products.index:     GET|HEAD        products                            ProductController@index

products.show:      GET|HEAD        products/{product}                  ProductController@show

products.create:    GET|HEAD        products/create                     ProductController@create

products.store:     POST            products                            ProductController@store

products.edit:      GET|HEAD        products/{product}/edit             ProductController@edit

products.update:    PUT|PATCH       products/{product}                  ProductController@update

products.destroy:   DELETE          products/{product}                  ProductController@destroy
*/
