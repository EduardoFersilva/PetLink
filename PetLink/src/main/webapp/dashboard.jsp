<!DOCTYPE html>
<html>
<head>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/webjars/bootstrap/5.3.2/css/bootstrap.min.css">
    <link href="/css/dashboard.css" rel="stylesheet">
	<link href="/css/style.css" rel="stylesheet">
    <title>Dashboard</title>

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

<div>
    <div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3 sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="#"><span data-feather="user" class="align-text-bottom"></span>     <c:if test="${sessionScope.loggedUser != null}">
                                <span>${sessionScope.loggedUser}</span>
                            </c:if> </a>
						</li>
					</ul>
					<hr>
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link" aria-current="page" href="/find-all-pets"><span data-feather="home" class="align-text-bottom"></span> Dashboard </a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/create-pet"><span data-feather="file-text" class="align-text-bottom"></span> Novo Pet</a>
						</li>
					</ul>
				</div>
			</nav>
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<h2 style="margin: 20px 0;">Dashboard</h2>
				<div class="table-responsive">
                    <table class="table table-sm">
                        <thead class="table-secondary">
                          <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Acoes</th>
                          </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="pet" items="${pets}">
                                <tr>
                                    <th scope="row">${pet.id}</th>
                                    <td>${pet.name}</td>
                                    <td>                    <c:if test="${sessionScope.loggedUser != null}">
                                        <form action="/delete-pet" method="post">
                                            <input type="hidden" id="id" name="id" value="${pet.id}">
                                            <button type="submit" class="btn btn-danger">Delete</button>
                                            <a href="petz.jsp?id=${pet.id}&name=${pet.name}"><button type="button" class="btn btn-primary">Update</button></a>
                                        </form>
                                    </c:if></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
				</div>
			</main>
		</div>
	</div>

    <script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="/js/feather.min.js"></script>
	<script src="/js/dashboard.js"></script>

</body>
</html>