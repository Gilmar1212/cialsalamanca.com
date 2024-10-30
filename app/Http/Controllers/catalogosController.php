<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class catalogosController extends Controller
{
    public function catalogos(){
        return view("catalogos");
    }
}
