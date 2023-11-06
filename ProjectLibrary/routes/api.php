<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\APIBookController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();

    });
    
    Route::apiResource('api-books', APIBookController::class); // เปลี่ยนเส้นทางเป็น 'api-books'
    Route::get('api-books/search/{query}', [APIBookController::class, 'search']); // สามารถเปลี่ยนเส้นทางเป็น 'api-books' ได้เช่นกัน
    Route::get('api-users', [APIBookController::class, 'user']);
    Route::get('api-borrowings', [APIBookController::class ,'getBorrowings']);
