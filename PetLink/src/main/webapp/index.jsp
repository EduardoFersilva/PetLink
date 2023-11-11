<html>
<head>
    <link rel="stylesheet" href="index.css">
    <script src="/index.js"></script>
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

                    <li class="splide__slide">
                    <div class="card">
                        <div class="image">
                            <img src="/images/dog2.png" alt="">
                        </div>
                        <div class="infos">
                            <h1>Nome: Calebreso</h1>
                            <p>Idade: 3 anos</p>
                            <p>Sexo: Masculino</p>
                        </div>
                    </div>
                    </li>
                    <li class="splide__slide">
                        <div class="card">
                            <div class="image">
                                <img src="/images/dog2.png" alt="">
                            </div>
                            <div class="infos">
                                <h1>Nome: Calebreso</h1>
                                <p>Idade: 3 anos</p>
                                <p>Sexo: Masculino</p>
                            </div>
                        </div>
                        </li>
                        <li class="splide__slide">
                            <div class="card">
                                <div class="image">
                                    <img src="/images/dog2.png" alt="">
                                </div>
                                <div class="infos">
                                    <h1>Nome: Calebreso</h1>
                                    <p>Idade: 3 anos</p>
                                    <p>Sexo: Masculino</p>
                                </div>
                            </div>
                            </li>
                            <li class="splide__slide">
                                <div class="card">
                                    <div class="image">
                                        <img src="/images/dog2.png" alt="">
                                    </div>
                                    <div class="infos">
                                        <h1>Nome: Calebreso</h1>
                                        <p>Idade: 3 anos</p>
                                        <p>Sexo: Masculino</p>
                                    </div>
                                </div>
                                </li>
                                <li class="splide__slide">
                                    <div class="card">
                                        <div class="image">
                                            <img src="/images/dog2.png" alt="">
                                        </div>
                                        <div class="infos">
                                            <h1>Nome: Calebreso</h1>
                                            <p>Idade: 3 anos</p>
                                            <p>Sexo: Masculino</p>
                                        </div>
                                    </div>
                                    </li>
                                    <li class="splide__slide">
                                        <div class="card">
                                            <div class="image">
                                                <img src="/images/dog2.png" alt="">
                                            </div>
                                            <div class="infos">
                                                <h1>Nome: Calebreso</h1>
                                                <p>Idade: 3 anos</p>
                                                <p>Sexo: Masculino</p>
                                            </div>
                                        </div>
                                        </li>

                </ul>
            </div>
        </div>
        
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
<!--
    <div class="footer">

    </div>


<form action="/create-pet" method="post" enctype="multipart/form-data">
    <div>
        <label>Pet Name</label>
        <input type="text" name="pet-name" id="pet-name" value="${param.name}">
        <input type="hidden" name="id" id="id" value="${param.id}">
        <br>
        <label>Tipo</label>
        <input type="text" name="pet-tipo" id="pet-tipo" value="${param.tipo}">
        <br>

        <label>Raca</label>
        <input type="text" name="pet-breed" id="pet-breed" value="${param.breed}">
        <br>

        <label>Porte</label>
        <input type="text" name="pet-porte" id="pet-porte" value="${param.porte}">
        <br>

        <label>Sexo</label>
        <input type="text" name="pet-sexo" id="pet-sexo" value="${param.sexo}">
        <br>

        <label>Idade</label>
        <input type="text" name="pet-idade" id="pet-idade" value="${param.idade}">
        <br>

        <label>Descricao</label>
        <input type="text" name="pet-description" id="pet-description" value="${param.description}">
        <br>
    </div>
    <div>
        <label>Image</label>
        <input type="file" name="image" id="image">
    </div>
    <br>

    <button type="submit">Save</button>

</form>
-->
</body>
</html>
