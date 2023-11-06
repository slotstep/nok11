<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

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

/*Route::get('/', function () {
    return view('welcome');
});
*/
Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('admin.home', [HomeController::class, 'adminHome'])->name('admin.home')->middleware('is_admin');
Route::resource('books', HomeController::class ,);
Route::get('/search',[App\Http\Controllers\HomeController::class, 'search'])->name('search');
Route::post('/returnbook', [App\Http\Controllers\HomeController::class,'returnbook'])->name('returnbook');
Route::post('/borrow', [App\Http\Controllers\HomeController::class,'borrow'])->name('borrow');
Route::get('history', [HomeController::class, 'history'])->name('history');





