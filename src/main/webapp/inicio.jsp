<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Bienvenido</title>
    
    <script type="text/javascript">
		window.onbeforeunload = function() { return "¿Estás seguro que deseas salir?"; }
	</script>
	
  </head>
  <body>

  <div class="half">
    <div class="bg order-1 order-md-2" style="background-image: url('images/bg.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block">
              <div class="text-center mb-5">
								<h3>
									<strong>Hola</strong>
								</h3>
								<div>
									<br>
									<br>
									<h2> Bienvenido, <span style="font-weight: bold"><%= session.getAttribute("email") %></span>
									</h2>
								</div>
              </div>
              <form action="Login.jsp" method="post">
                <div class="form-group first">
                </div>
                <div>
						<p>
							<%
							String resultado = (String) request.getAttribute("mensaje");
							String mensaje = "";
							if (resultado != null) { mensaje = resultado;}
							%>
							<%=mensaje%>
						</p>
					</div>
                <input type="submit" value="Volver a Iniciar sesión" class="btn btn-block btn-primary">
              </form>
              
               <form action="Password.jsp" method="post">
                <div class="form-group first">
                </div>
                <input type="submit" value="Cambiar contraseña" class="btn btn-block btn-primary">
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>