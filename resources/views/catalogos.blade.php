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
    <title>Login</title>
</head>

<body class="bg-gray-900">
    <header class="p-5">
        <div class="flex flex-row flex-wrap items-center justify-around gap-5">
            <img class="w-48 mb-5" src="{{ url('images/logo-remove-bg.png') }}" alt="Logo">
            <div class="pl-5">
            </div>

        </div>
    </header>
    <div>
        <div class="md:container md:mx-auto p-5">
            <div class="flex justify-center items-center flex-col">
                @foreach (session('userSession')['catalogos'] as $item)
                    
                @if($item['id'] == request('id'))
                
                <h2 class="font-bold text-white text-6xl mb-5">{{$item['titulo']}}</h2>
                @endif
                @endforeach
                <h2 class="font-bold text-white text-center">VINHOS , PACKS e PRESENTES DE NATAL / WINES, PACKS and
                    CHRISTMAS GIFTS
                    /
                    VINS,
                    PACKS et CADEAUX DE NOEL</h2>
                <div class="grid grid-cols-3 max-md:grid-cols-2 max-sm:grid-cols-1">
                    @isset(session('userSession')['files'])
                        @foreach (session('userSession')['files'] as $index)
                            @if ($index['id_catalogos'] == request('id'))
                                <a href="{{ url("storage/{$index['path_pdf']}") }}"
                                    class="p-5 m-5 text-white bg-gold bg-[#d2a86f]  rounded-xl text-center text-sm hover:bg-slate-700 transition delay-100"
                                    download>{{ $index['pdf_title'] }} <i class="pl-2 fa-solid fa-download"></i></a>
                            @endif
                        @endforeach
                    @endisset
                </div>
            </div>
            <h2 class="font-bold text-white text-center p-5">
                Informe o produto que procura e enviaremos a nossa melhor cotação /<br> Let us know what product you are
                looking for and we will send you our best quote / <br>Faite-nous savoir quel produit vous recherchez et
                nous
                vous enverrons notre meilleur devis
            </h2>
            @if (session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif
        </div>
    </div>
</body>
<footer class="p-5 bg-[#d2a86f]">
    <div>
        <h2 class="text-center text-white mt-5 text-2xl">CONTATOS</h2>
        <div class="flex justify-center max-sm:flex-col max-sm:justify-center max-sm:align-center">
            <div>
                <h2 class="text-white text-center p-5">Direção Comercial</h2>
                <h3 class="text-white text-center p-5">Abilio Soares</h3>
                <a href="https://web.whatsapp.com/send?phone=351913935451&amp;text=<?= rawurlencode('Olá Gostaria de saber mais sobre os serviços da Cial Customer ?') ?>"
                    target="_blank" class="text-white text-center max-sm:block p-5">whatssap +351913935451 </a>
            </div>

            <div>
                <h2 class="text-white text-center p-5">Administração</h2>
                <h3 class="text-white text-center p-5">Miguel Moura</h3>
                <a href="mailto:cial.salamanca@gmail.com" title="Email"
                    class="text-white p-5 max-sm:block text-center">cial.salamanca@gmail.com</a>
            </div>
        </div>
    </div>

</footer>

</html>
