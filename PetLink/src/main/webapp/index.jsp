<html>
<body>
<h2>Create Pet</h2>

<form action="/create-pet" method="post">

    <label>Pet Name</label>
    <input type="text" name="pet-name" id="pet-name" value="${param.name}">
    <input type="hidden" name="id" id="id" value="${param.id}">



    <button type="submit">Save</button>

</form>

</body>
</html>