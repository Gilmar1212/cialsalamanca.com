<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;

class CadastroUsuarioController extends Controller
{
    private $req;
    public function viewSignUpReturn(){
        return view('cadastro-usuario');
    }
    public function store(Request $request){
        $this->req = $request;                

        $cadastro = new User;
        $cadastro->name = $this->req->name;
        $cadastro->username = $this->req->username;
        $cadastro->password  = password_hash($this->req->password,PASSWORD_BCRYPT);
        $cadastro->email  = $this->req->email;        
        $cadastro->user_level  = $this->req->user_level;        
        $cadastro->save();
        
        return redirect("/");
    }
}
