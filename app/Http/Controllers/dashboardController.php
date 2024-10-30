<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catalogos;
use App\Models\Files;
use Illuminate\Support\Facades\DB;

class dashboardController extends Controller
{
    public function viewCatalogoReturn()
    {

        return view('dashboard');
    }

    public function store(Request $request)
    {
        // Criar uma nova instância do modelo Files
        $catalogo = new Files();
    
        // Verificar se o arquivo PDF foi enviado
        if ($request->hasFile('pdf')) {
            $pdfFile = $request->file('pdf');            
            
            // Armazenar o arquivo PDF na pasta public/pdfs
            $pdfPath = $pdfFile->storeAs('pdfs', $pdfFile->getClientOriginalName(), 'public');
            
            // Definir os atributos
            $catalogo->path_pdf = $pdfPath; // Define o caminho do PDF
            $catalogo->id_catalogos = $request->input('id_catalogos');
            $catalogo->pdf_title = $pdfFile->getClientOriginalName();
        }      
    
        // Salvar a instância no banco de dados
        $catalogo->save();
    
        return back()->with('success', 'Arquivos enviados com sucesso!');
    }
}
