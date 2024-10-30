<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <script src="https://kit.fontawesome.com/51a61f3d00.js" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    @vite('resources/css/app.css')
    <title>Cadastro catálogo</title>
</head>

<body class="bg-gray-900">
    <header>
        <img class="w-48 mb-5" src="{{ url('images/logo-remove-bg.png') }}" alt="Logo">
    </header>
    <div class="flex justify-center items-center flex-col h-screen">
        <form action="{{ route('cadastra-catalogos') }}" method="POST" enctype="multipart/form-data" class="flex flex-col">
            @if (session('success'))
            <div class="text-lime-500">
                {{ session('success') }}
            </div>
        @endif
            @csrf
            <input class="transition delay-100 w-72 border-2 mb-2 p-2 hover:bg-slate-200 rounded-md border-dark-300"
                type="text" name="titulo" placeholder="Titulo">                    
            <input type="submit"
                class="transition cursor-pointer delay-100 bg-[#d2a86f] hover:bg-slate-500 text-white p-2 rounded-md"
                value="Cadastrar">
            {{-- <a href="{{ route('cadastro') }}" title="Cadastre-se">Cadastre-se</a> --}}
        </form>
    </div>   
</body>

</html>
