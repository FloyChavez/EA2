<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registrarse</title>
    <link rel="stylesheet" href="css/estilos.css">
    
</head>
<body>
	<div class="main">
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
					<p>&nbsp;</p>
						<h2 class="form-title">Registrarse</h2>
						<form action="svlRegister" method="post" class="register-form" onsubmit="return validarCondiciones()">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Nombres" />
							</div>
							<div class="form-group">
								<label for="apellido"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="apellido" id="Your Last Name"
									placeholder="Apellidos" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Correo" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Contraseña" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>Estoy de acuerdo con todas las declaraciones en
									 <a href="#" class="term-service">Términos del servicio
										</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" data-toggle="modal"
									data-target="#registroExitoso" class="form-submit"
									value="Crear cuenta" />
							</div>
							<div class="form-group">
								<%
								String resultado = (String) request.getAttribute("mensaje");
								String mensaje = "";
								if (resultado != null) {mensaje = resultado;}
								out.print(mensaje);
								%>
							</div>
							
						</form>
					</div >
					
					<div class="signup-image">
						<figure>
							<img src="images/signup-imag.jpg" alt="sing up image">
						</figure>
						<a href="Login.jsp" class="signup-image-link">Iniciar Sesión</a>
					</div>
				</div>
			</div>
		</section>
	</div>

	<script>
		function validarCondiciones() {
			var checkbox = document.getElementById("agree-term");
			var nombres= document.getElementById("name").value;
			var apellidos= document.getElementById("Your Last Name").value;
			var email= document.getElementById("email").value;
			var pass= document.getElementById("password").value;
			
			if (!checkbox.checked) {
				alert("Es esencial aceptar los terminos y condiciones.");
				return false;
			}
			if (	nombres == null || nombres.length == 0 ||
					apellidos == null || apellidos.length == 0 ||
					email == null || email.length == 0 ||
					pass == null || pass.length == 0 
			) {
				alert("Debe rellenar todos los campos solicitados");
				return false;
			}
			return true;
		}
	</script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main_rl.js"></script>

</body>
</html>