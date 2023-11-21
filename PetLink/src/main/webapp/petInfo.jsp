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
            <div class="ContInfos">
                <div class="info-pet">
                    <div class="contList">
                        <h1 class="nome">${pet.name}</h1>
                        <div class="InfoContainer">

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Idade:</p>
                                <p class="textInfo">${pet.idade}</p>
                            </div>

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Tipo:</p>
                                <p class="textInfo"> ${pet.tipo}</p>                   
                            </div>

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Sexo:</p>
                                <p class="textInfo">${pet.sexo}</p>
                            </div>

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Porte:</p>
                                <p class="textInfo">${pet.porte}</p>
                            </div>

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Ra&ccedila:</p>
                                <p class="textInfo"> ${pet.breed}</p>                   
                            </div>

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Descri&ccedil&atildeo:</p>
                                <p class="textInfo"> ${pet.description}</p>                   
                            </div>

                        </div>
                    </div>
       
                    <div class="contList">
                        <h1 class="ongNome">Sobre a Ong</h1>
                        <div class="InfoContainer">

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Nome:</p>
                                <p class="textInfo">${pet.ong.userName}</p>
                            </div>

                            <div class="containerSessao">
                                <p class="sessaoTitulo">Email:</p>
                                <a href="mailto:${pet.ong.email}" class="textInfo"> ${pet.ong.email}</a>
                            </div>
                            
                            <div class="containerSessao contato">
                                <p class="sessaoTitulo">Endere&ccedilo:</p>
                                <p class="textInfo">${pet.ong.address} - ${pet.ong.cep}</p>
                            </div>

                        </div>
                    </div>
                    <!-- <button class="email-btn">EMAIL</button> COLOCAR O DIRECIONAMENTO PARA EMAIL (CASO NECESSÁRIO ESSA FUNCIONALIDADE). LEMBRAR DE MEXER NA POSICAO DO BOTAO -->
                </div>

                <div class="img-pet">
                    <img src="/img/${pet.image}" class="petImage">
                </div>

            </div>
        </main>
        <div class="footer">
            <img src="/images/logo.png" alt="logo" onclick="redirectHome()">
            <h1> &copyCopyright</h1>
    
            <p class="textInfo" style="margin: 30px 0 10px 0;">Todos os direitos reservados.</p class="textInfo">
            <p>Eduardo Fernandes</p>
            <p>Victor Laguna</p>
            <p>Felipe Malcom</p>
            <p>Michael Evangelista</p>
            <p>Rafael Ribeiro</p>
            
        </div>
    </body>