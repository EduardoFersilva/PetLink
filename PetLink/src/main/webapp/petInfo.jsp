<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <meta charset="UTF-8">
        <!-- <link rel="stylesheet" href="login.css"> -->
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="petInfo.css">
        <script src="/index.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Racing+Sans+One&display=swap" rel="stylesheet">
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
                <div class="img-pet">
                    <img src="/images/caramelo.jpg" alt="" class="petImage">
                </div>
                <div class="info-pet">
                    <!--COLOCAR AS INFORMACOES DE FORMA DINAMICA COM JS-->
                    <h1>PET</h1>
                    <h2>Raça: ${pet.breed}</h2><br>                   
                    <h2>Idade: ${pet.idade}</h2><br>
                    <h2>Porte: ${pet.porte}</h2><br>    
                    <h2>Nome: ${pet.name}</h2><br>
                    
                    <h1>ONG</h1>
                    <h2>Nome: Ong dos Dog</h2><br>
                    <h2>Endereço: RUA dos dOGS, 76</h2><br>
                    <h2>Contato: 727393938739</h2><br>

                    <button class="email-btn">EMAIL</button> <!--COLOCAR O DIRECIONAMENTO PARA EMAIL (CASO NECESSÁRIO ESSA FUNCIONALIDADE). LEMBRAR DE MEXER NA POSICAO DO BOTAO-->
                </div>
        </main>
    </body>