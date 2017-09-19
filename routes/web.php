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
Route::get('/pokemon', function(){
    return view('pokemon');
});

Route::get('/', function () {
    return view('welcome');
});

Route::prefix("pokemon")->group(function(){
    Route::get("index","PokemonController@getIndex");
    Route::get("edit/[:id]","PokemonController@update");

    Route::post("salvar","PokemonController@post");
    Route::put("atualizar","PokemonController@put");
    Route::delete("deletar","PokemonController@delete");
});

Auth::routes();
