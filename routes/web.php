<?php

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

Route::get('/', 'MainController@index');
Route::get('/otzivi', 'MainController@otzivi');
Route::get('/pravila', 'MainController@pravila');
Route::get('/dosto', 'MainController@dosto');
Route::get('/cont', 'MainController@cont');
Route::get('/nomera', 'MainController@nomera');
Route::get('/serv', 'MainController@serv');
Route::get('/photo', 'MainController@photo');
Route::get('/nomer{solo}', 'MainController@solonomer');
Route::get('/domp', 'MainController@domp');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
