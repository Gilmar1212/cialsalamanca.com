<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthenticatedSessionController extends Controller
{

    public function destroy(Request $request)
    {

        // Faz logout do usuário autenticado
        Auth::logout();
        session()->flush();

        // Redireciona para a página inicial ou outra página
        return redirect('/')->with('message', 'Você saiu com sucesso!');
    }
}
