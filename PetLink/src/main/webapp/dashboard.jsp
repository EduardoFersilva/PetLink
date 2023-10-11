<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>

</head>
<body>
<div>
    <h1>Pets</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Actions</th>

        </tr>
        <c:forEach var="pet" items="${pets}">
            <tr>
                <td>${pet.id}</td>
                <td>${pet.name}</td>
                <td>
                    <form action="/delete-pet" method="post">
                        <input type="hidden" id="id" name="id" value="${pet.id}">
                        <button type="submit">Delete</button>
                        <span> | </span>
                        <a href="index.jsp?id=${pet.id}&name=${pet.name}">Update</a>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>