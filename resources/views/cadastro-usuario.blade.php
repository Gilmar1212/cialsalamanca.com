<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastre-se</title>
</head>
<body>
    <form method="POST" action="{{route("cadastro")}}">
        @csrf
        <input type="text" name="name" placeholder="Seu nome" required>
        <input type="email" name="email" placeholder="Insira seu email" required>
        <input type="text" name="username" placeholder="Insira seu usuário" required>
        <input type="password" name="password" placeholder="insira sua senha" required>
        <select name="user_level" id="level">
            <option value="1">
                Level Ouro
            </option>
            <option value="2">
                Level Diamante
            </option>            
        </select>
        <input type="submit" value="Cadastrar">
        {{-- {{$cadastro}} --}}
    </form>
</body>
</html>