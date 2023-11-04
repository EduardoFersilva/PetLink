<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="user.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Racing+Sans+One&display=swap" rel="stylesheet">
        <script src="/index.js"></script>
    </head>

<body>
    <header>
        <img src="/images/logo.png" alt="logo" onclick="redirectHome()">

        <div class="buttons">
            <button id="btnLogin"  onclick="redirectLogin()">Login</button>
            <button id="btnCadastro"  onclick="redirectUser()">Cadastrar-se</button>
        </div>
    </header>
<main>
    <div class="cont">
        <form class="divForm" action="/user" method="post">

            <h1>Cadastre-se</h1>

                <div>
                    <input type="text" id="user-name" placeholder="Username" name="user-name" class="input" value="${param.name}">
                    <input type="hidden" name="id" id="id" value="${param.id}">

                    <input type="password" id="user-password" placeholder="Password" name="user-password" class="input" value="${param.password}">
                </div>

                <div>
                    <input type="email" id="user-email" placeholder="E-mail" name="user-email" class="input" value="${param.email}">

                    <input type="text" id="user-cpf" placeholder="CPF" name="user-cpf" class="input" value="${param.cpf}">

                    <input type="date" id="user-age" placeholder="CPF" name="user-age" class="input" value="${param.age}">
                </div>

                <div>
                    <input type="text" id="user-address" placeholder="Endereco" name="user-address" class="input address" value="${param.address}">

                    <input type="text" id="user-cep" placeholder="Cep" name="user-cep" class="input" value="${param.cep}">
                </div>

                <button type="submit">Register</button>
        </form>
        <img src="/images/a.png" alt="">
    </div>
</main>
</body>
</html>