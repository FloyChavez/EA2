<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Cambiar Contraseña</title>
  <link rel="stylesheet" href="./css/password.css">

</head>
<body>
<div class="mainDiv">
  <div class="cardStyle">
    <form action="svlPassword" method="post" name="signupForm" id="signupForm">
      
      <img src="https://linube.com/blog/wp-content/uploads/contrase%C3%B1as-seguras.png" id="signupLogo"/>
      
      <h2 class="formTitle">RECUPERAR CONTRASEÑA</h2>
      
    <div class="inputDiv">
      <label class="inputLabel" for="email">Correo</label>
      <input type="email" id="email" name="email" required>
    </div>  
      
    <div class="inputDiv">
      <label class="inputLabel" for="passwordActual">Contraseña</label>
      <input type="password" id="passwordActual" name="passwordActual" required>
    </div>
      
    <div class="inputDiv">
      <label class="inputLabel" for="newPass">Nueva Contraseña</label>
      <input type="password" id="newPass" name="newPass">
    </div>
    
  <div class="buttonWrapper">
    <button type="submit" id="submitButton" class="submitButton pure-button pure-button-primary">
      <span>Cambiar contraseña</span>
    </button>
  </div>
      
  </form>
  </div>
</div>
  <script  src="./js/main_rl.js"></script>
</body>
</html>
