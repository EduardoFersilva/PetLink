<!DOCTYPE html>
<html lang="en">
    <meta charset="UTF-8">
    <title>user</title>

<body>
<form action="/user" method="post">

    <label>User Name</label>
    <input type="text" name="user-name" id="user-name" value="${param.name}">
    <input type="hidden" name="id" id="id" value="${param.id}">

    <br>

    <label>Password</label>
    <input type="text" name="user-password" id="user-password" value="${param.password}">

    <br>

    <label>email</label>
    <input type="text" name="user-email" id="user-email" value="${param.email}">

    <br>

    <label>cpf</label>
    <input type="text" name="user-cpf" id="user-cpf" value="${param.cpf}">
    <br>
    <label>idade</label>
    <input type="text" name="user-age" id="user-age" value="${param.age}">
    <br>
    <label>endereco</label>
    <input type="text" name="user-address" id="user-address" value="${param.address}">

    <br>
    <label>cep</label>
    <input type="text" name="user-cep" id="user-cep" value="${param.cep}">

    <br>



    <button type="submit">Register</button>
</form>
</body>
</html>