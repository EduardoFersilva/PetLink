<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <link rel="stylesheet" href="index.css">
    <script src="index.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Racing+Sans+One&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css">
</head>
<body>
    <header>
        <img src="/images/logo.png" alt="logo" onclick="redirectHome()">

        <div class="buttons">
            <button id="btnLogin"  onclick="redirectLogin()">Login</button>
            <button id="btnCadastro"  onclick="redirectUser()">Cadastrar-se</button>
        </div>
    </header>
 
    <div class="banner">
        <div class="intro">
            <img src="/images/cat.png" alt="" class="imgCat">
            <h1>A plataforma que conecta voce ao seu novo PET</h1>
        </div>
        <img src="/images/imgBanner.png" alt="">
    </div>

    <div class="cont">
        <div class="splide">
            <div class="splide__track">
                <ul class="splide__list" style="height: 500px;">
                    <c:forEach var="pet" items="${pets}">
                        <li class="splide__slide">
                            <a href="#" onclick="redirectInfo('${pet.id}')" style="text-decoration: none;">
                                <div class="card">
                                    <div class="image">
                                        <img src="/img/${pet.image}" alt="">
                                    </div>
                                    <div class="infos">
                                        <h1>Nome: ${pet.name}</h1>
                                        <p>Idade: ${pet.idade}</p>
                                        <p>Sexo: ${pet.sexo}</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="textSobre">
            <h1>Sobre n&oacutes</h1>
            <p>
                Bem-vindo a uma revolu&ccedil&atildeo na forma como ONGs e adotantes se encontram. Com a nossa plataforma inovadora, estamos transformando o processo de ado&ccedil&atildeo, 
                simplificando e agilizando a conex&atildeo entre animais necessitados e cora&ccedil&otildees generosos.
                O Poder da Conex&atildeo:
                Imagine uma comunidade onde as ONGs de resgate animal podem se conectar diretamente com pessoas apaixonadas por ado&ccedil&atildeo. Nosso software facilita essa conex&atildeo, 
                oferecendo uma interface intuitiva e abrangente, criada especificamente para atender  &agraves necessidades de ambos os lados.
                Para ONGs:
                Perfil Detalhado: Crie perfis completos para os animais sob seus cuidados, com fotos, hist&oacuterias e informa&ccedil&otildees m&eacutedicas.
                Comunica&ccedil&atildeo Eficiente: Interaja diretamente com potenciais adotantes, respondendo perguntas e compartilhando detalhes importantes.
                Acompanhamento P&oacutes-Ado&ccedil&atildeo: Mantenha contato com as fam&iacutelias adotantes para garantir o bem-estar cont&iacutenuo dos animais.
                Para Adotantes:
                Conex&atildeo Significativa: Entre em contato com as ONGs diretamente, expressando interesse e entendendo mais sobre os animais dispon&iacuteveis.
                Suporte Cont&iacutenuo: Receba orienta&ccedil&otildees e recursos sobre cuidados p&oacutes-ado&iacute&atildeo, garantindo uma transi&ccedil&atildeo suave para o novo membro da fam&iacutelia.
            </p>
        </div>
    </div>
   

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

    <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js"></script>
    <script>
        var splide = new Splide('.splide', {
            type: 'loop',
            perPage: 3,
            perMove: 1,
        });

        splide.mount();
    </script>


</body>
</html>
