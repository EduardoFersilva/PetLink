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
    <title>Pet</title>




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
</head>
<body>

</body>
</html>
