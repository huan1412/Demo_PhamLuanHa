<?php

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
    return view('index');
});
Route::get('/posts', function () {
	$posts = DB::table('tbl_posts')->limit('5')->get();
    return $posts;
});
Route::get('/posts_random', function () {
	$posts = DB::table('tbl_posts')->inRandomOrder()->limit('5')->get();
    return $posts;
});