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
        </tr>
        <c:forEach var="pet" items="${pets}">
            <tr>
                <td></td>
                <td>${pet.name}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>