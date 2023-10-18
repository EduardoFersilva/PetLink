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
    <input type="user-password" name="user-password" id="user-password" value="${param.password}">


    <button type="submit">Register</button>
</form>
</body>
</html>