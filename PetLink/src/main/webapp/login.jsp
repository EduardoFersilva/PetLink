<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Racing+Sans+One&display=swap" rel="stylesheet">
</head>

<body>
<main>
    <form class="divForm" action="/login" method="post">
        <div class="head">Login</div>
        <div class="bodyForm">
            <span>${requestScope.message}</span>

                <input type="text" id="username" placeholder="Username" name="username" class="input">

                <input type="password" id="password" placeholder="Password" name="password" class="input">

                <button type="submit">Login</button>
        </div>
    </form>
</main>
</body>
</html>