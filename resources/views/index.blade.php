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
        <script src="https://cdn.tailwindcss.com"></script>
    @vite(['resources/css/app.css','resources/js/app.js'])
    <title>Login</title>
</head>

<body class="bg-gray-900">

    <div class="flex justify-center items-center flex-col h-screen p-5">
        <img class="w-56 mb-5" src="{{ url('images/logo-remove-bg.png') }}" alt="Logo">
        <h1 class="text-sm font-bold pb-2 pt-2 text-gold text-[#d2a86f]  text-center">Exclusivo a Parceiros Comerciais CIAL / Exclusive to CIAL
            commercial Partners / Exclusif aux Partenaires commerciaux de CIAL</h1>
        <form action="{{ route('login') }}" method="POST" class="flex flex-col">
            @csrf
            @if (session('error'))
                <div class="alert alert-danger">
                    <ul>
                        <li class="text-red-600 text-center">{{ session('error') }}</li>
                    </ul>
                </div>
            @endif
            <input class="transition delay-100 w-72 border-2 mb-2 p-2 hover:bg-slate-200 rounded-md border-dark-300"
                type="text" name="username" placeholder="Login">
            <input class="transition delay-100 w-72 border-2 mb-2 p-2 hover:bg-slate-200 rounded-md border-dark-300"
                type="password" name="password" placeholder="Senha">
            <input type="submit"
                class="transition cursor-pointer delay-100 bg-gold bg-[#d2a86f] hover:bg-slate-500 text-white p-2 rounded-md">
        </form>     
    </div>
</body>

</html>
