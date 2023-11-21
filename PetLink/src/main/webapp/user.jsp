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
        </div>
    </header>
    <main>
        <div class="cont">
            <form class="divForm" action="/user" method="post">

                <h1>Cadastre-se</h1>

                <div class="contName">
                    <input type="text" id="user-name" placeholder="Username" name="user-name" class="input" value="${param.name}" required>
                    <input type="hidden" name="id" id="id" value="${param.id}">
                    <input type="password" id="user-password" placeholder="Password" name="user-password" class="input" value="${param.password}" required>
                </div>

                <div class="contEmail">
                    <div class="contCpf">
                        <input type="email" id="user-email" placeholder="E-mail" name="user-email" class="input" value="${param.email}" required>
                        <input type="text" id="user-cnpj" placeholder="CNPJ" name="user-cnpj" class="input" value="${param.cnpj}" required pattern="[0-9]{11}" title="Digite um CNPJ válido (apenas números)">
                    </div>
                    <div class="date">
                        <input type="date" id="user-age"  name="user-age" class="input" value="${param.age}" required>
                    </div>
                </div>

                <div class="contEndereco">
                    <input type="text" id="user-address" placeholder="Endereco" name="user-address" class="input address" value="${param.address}" required>
                    <input type="text" id="user-cep" placeholder="Cep" name="user-cep" class="input" value="${param.cep}" required pattern="[0-9]{8}" title="Digite um CEP válido (apenas números)">
                </div>

                <button class="btnRegister" type="submit">Register</button>
            </form>
            <img src="/images/imgCadastro.png" alt="">
        </div>
    </main>

    <div class="footer">
        <img src="/images/logo.png" alt="logo" onclick="redirectHome()">
        <h1> &copyCopyright</h1>
        <h2 style="margin: 30px 0 10px 0;">Todos os direitos reservados.</h2>
        <p>Eduardo Fernandes</p>
        <p>Victor Laguna</p>
        <p>Felipe Malcom</p>
        <p>Michael Evangelista</p>
        <p>Rafael Ribeiro</p>
    </div>
</body>
</html>
