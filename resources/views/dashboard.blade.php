<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
         <script src="https://kit.fontawesome.com/51a61f3d00.js" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    @vite('resources/css/app.css')
    <title>Dashboard</title>
</head>

<body class="bg-gray-900">
    <header>
        <img class="w-48 mb-5" src="{{ url('images/logo-remove-bg.png') }}" alt="Logo">
    </header>
    <div class="flex justify-center items-center flex-col">
        <form action="{{ route('dashboard') }}" method="POST" enctype="multipart/form-data" class="flex flex-col">
            @if (session('success'))
                <div class="text-lime-500">
                    {{ session('success') }}
                </div>
            @endif
            @csrf
            <label for="" class="text-white">Arquivos</label>
            <select name="id_catalogos" id="id-catalogos" class="p-3 mt-3 mb-3">           
                <option value="default">--Escolha o catálogo -- </option>     
                @isset(session('userSession')['catalogos'])
                    @foreach (session('userSession')['catalogos'] as $options)
                        <option value="{{ $options['id'] }}">{{ $options['titulo'] }}</option>
                    @endforeach
                @endisset
            </select>
            <input class="transition delay-100 w-72 border-2 mb-2 p-2 hover:bg-slate-200 rounded-md border-dark-300"
                type="file" name="pdf" placeholder="PDF" multiple>
            <input type="submit"
                class="transition cursor-pointer delay-100 bg-gold bg-[#d2a86f] hover:bg-slate-500 text-white p-2 rounded-md"
                value="Cadastrar">
            {{-- <a href="{{ route('cadastro') }}" title="Cadastre-se">Cadastre-se</a> --}}
        </form>
    </div>
</body>

</html>
