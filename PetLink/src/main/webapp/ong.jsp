<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ong</title>
  <form action="/create-ong" method="post" enctype="multipart/form-data">
    <div>
      <label>Nome</label>
      <input type="text" name="ong-name" id="ong-name" value="${param.name}">
      <input type="hidden" name="id" id="id" value="${param.id}">
      <br>

      <label>CNAE</label>
      <input type="text" name="ong-cnae" id="ong-cnae" value="${param.cnae}">

      <br>
      <label>EMAIL</label>
      <input type="text" name="ong-email" id="ong-email" value="${param.email}">
      <br>

      <label>PHONE</label>
      <input type="text" name="ong-phone" id="ong-phone" value="${param.phone}">
      <br>

      <label>SENHA</label>
      <input type="password" name="ong-password" id="ong-password" value="${param.password}">
      <br>

      <label>ENDEREÇO</label>
      <input type="text" name="ong-address" id="ong-address" value="${param.address}">
      <br>

      <label>CEP</label>
      <input type="text" name="ong-cep" id="ong-cep" value="${param.cep}">
      <br>
    </div>

    <button type="submit">Save</button>

  </form>
</head>
<body>

</body>
</html>
