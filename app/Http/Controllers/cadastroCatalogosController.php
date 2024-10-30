<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catalogos;
class cadastroCatalogosController extends Controller
{
    public function catalogos(){
        return view("cadastro-catalogo");

    }
    public function store(Request $request){
        $catalogo = new Catalogos();
        $catalogo->titulo = $request->input("titulo");
        $catalogo->save();
        return back()->with("success", "Cadastro realizado com sucesso");

    }
}
