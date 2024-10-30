<?php

use Illuminate\Support\Facades\Route;

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
Route::prefix('/')->group(function(){
    Route::get('/',[\App\Http\Controllers\LoginController::class ,"viewLoginReturn"])->name("login");
    Route::post('/',[\App\Http\Controllers\LoginController::class ,"autenticaLogin"]);
});
Route::prefix('/cadastro')->group(function(){
    Route::get('/cadastro',[\App\Http\Controllers\CadastroUsuarioController::class ,"viewSignUpReturn"])->name("cadastro");
    Route::post('/cadastro',[\App\Http\Controllers\CadastroUsuarioController::class ,"store"]);
});
Route::prefix('/cadastrar-catalogo')->group(function(){
Route::get('/dashboard',[\App\Http\Controllers\dashboardController::class ,"viewCatalogoReturn"])->name("dashboard");
Route::post('/dashboard',[\App\Http\Controllers\dashboardController::class ,"store"]);
});
Route::post('/logout', [\App\Http\Controllers\AuthenticatedSessionController::class, 'destroy'])->name('logout');
Route::get('/cadastra-catalogos', [\App\Http\Controllers\cadastroCatalogosController::class, 'catalogos'])->name('cadastra-catalogos');
Route::post('/cadastra-catalogos', [\App\Http\Controllers\cadastroCatalogosController::class, 'store']);
Route::get('/catalogos/{id}', [\App\Http\Controllers\catalogosController::class, 'catalogos'])->name('catalogos');