<%--
  Created by IntelliJ IDEA.
  User: rafaelribeiro
  Date: 08/11/23
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/5.3.2/css/bootstrap.min.css">
    <link href="/css/dashboard.css" rel="stylesheet">
	  <link href="/css/style.css" rel="stylesheet">
    <title>Pet</title>
</head>
<body>

  <header class="navbar navbar-dark sticky-top flex-md-nowrap p-0 shadow" style="background: #156BA9;">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">PetLink</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="navbar-nav">
			<div class="nav-item text-nowrap">
				<a class="nav-link px-3" href="/logout">Sign out</a>
			</div>
		</div>
	</header>
  <div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3 sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="#"><span data-feather="user" class="align-text-bottom"></span><c:if test="${sessionScope.loggedUser != null}">
                <span>${sessionScope.loggedUser}</span>
                </c:if> 
              </a>
						</li>
					</ul>
					<hr>
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="/find-all-pets"><span data-feather="home" class="align-text-bottom"></span> Home </a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/create-pet"><span data-feather="file-text" class="align-text-bottom"></span> Novo Pet</a>
						</li>
					</ul>
				</div>
			</nav>
      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
          <div class="table-responsive">
            <form action="/create-pet" method="post" enctype="multipart/form-data">
              <h2 style="margin: 20px 0;">Create Pet</h2>

              <input type="hidden" name="id" id="id" value="${param.id}">
              <div class="mb-3" style="display: flex; flex-direction: column;">
                <label class="form-label" for="pet-name">Pet Name</label>
                <input class="form-contol" type="text" name="pet-name" id="pet-name" value="${param.name}">
              </div>

              <div class="mb-3" style="display: flex; flex-direction: column;">
                  <label class="form-label" for="pet-tipo">Tipo</label>
                  <input class="form-contol" type="text" name="pet-tipo" id="pet-tipo" value="${param.tipo}">
              </div>

              <div class="mb-3" style="display: flex; flex-direction: column;">
                <label class="form-label" for="pet-breed">Raca</label>
                <input class="form-contol" type="text" name="pet-breed" id="pet-breed" value="${param.breed}">
              </div>

              <div class="mb-3" style="display: flex; flex-direction: column;">
                <label class="form-label" for="pet-porte">Porte</label>
                <input class="form-contol" type="text" name="pet-porte" id="pet-porte" value="${param.porte}">
              </div>

              <div class="mb-3" style="display: flex; flex-direction: column;">
                <label class="form-label" for="pet-sexo">Sexo</label>
                <input class="form-contol" type="text" name="pet-sexo" id="pet-sexo" value="${param.sexo}">
              </div>

              <div class="mb-3" style="display: flex; flex-direction: column;">
                <label class="form-label" for="pet-idade">Idade</label>
                <input class="form-contol" type="text" name="pet-idade" id="pet-idade" value="${param.idade}">
              </div>

              <div class="mb-3" style="display: flex; flex-direction: column;">
                <label class="form-label" for="pet-description">Descricao</label>
                <input class="form-contol" type="text" name="pet-description" id="pet-description" value="${param.description}">
              </div>

              <div class="mb-3">
                <label for="formFile" class="form-label">Imagem</label>
                <input class="form-control" type="file" name="image" id="image">
              </div>

              <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary">Salvar</button>
              </div>
            </form>
          </div>
      </main>

    <script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="/js/feather.min.js"></script>
	  <script src="/js/dashboard.js"></script>

</body>
</html>
