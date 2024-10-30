<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Catalogos;
use App\Models\Files;

use Illuminate\Support\Facades\File;
class LoginController extends Controller
{
    public function viewLoginReturn()
    {

        return view("index");
    }
    public function autenticaLogin(Request $request)
    {
        $this->validate(
            $request,
            [
                'username' => 'required',
                'password' => 'required'
            ],
            [
                'username.required' => "Usuário obrigatório",
                'password.required' => "Senha obrigatória"
            ]
        );
        // $catalogos = Catalogos::all();        
        // $diretorio = 'caminho/para/o/diretorio'; // Altere para o seu diretório
        // $arquivos = File::allFiles($diretorio);

        // Tentativa de autenticação
        if (Auth::attempt(['username' => $request->username, 'password' => $request->password])) {
            // Recupera o usuário autenticado
            $user = Auth::user(); // Aqui você obtém o usuário autenticado
    
            // Verifica se o usuário foi encontrado
            if ($user) {
                $request->session()->put("userSession", [
                    "username" => $user->name, // Aqui você usa o objeto do usuário autenticado
                    "user_level" => $user->user_level,
                    "catalogos" => Catalogos::all(),
                    "files" => Files::all(),
                ]);
            }
    
            // Retorna a view "home"
            return view("home");
        } else {
            return back()->with("error", "Usuário ou senha incorreto");
        }
    }
}
