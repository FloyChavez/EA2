<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/estilos.css">


</head>
<body>
	<div class="main">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-imag.jpg" alt="sing up image"></figure>
                        <a href="Register.jsp" class="signup-image-link">Crear una nueva cuenta</a>
                    </div>
                    <div>
					
					
		</div>
					
					<div class="signin-form">
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
                        <h2 class="form-title">Inicio de Sesion</h2>
                        <form action="svlLogin" method="post" class="register-form">
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="email" id="email" placeholder="Correo"/>
                            </div>
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="Contraseña"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Iniciar Sesión"/>
                            </div>
                            <div class="form-group">
                            <%
							String resultado = (String) request.getAttribute("mensaje");
							String mensaje = "";
							if (resultado != null) { mensaje = resultado;}
							out.print(mensaje);
							%>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
	
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>