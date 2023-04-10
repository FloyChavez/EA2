package svl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

import dao.LoginDAO;

public class svlPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public svlPassword() {
        super();
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	
    	String email = request.getParameter("email");
    	String passwordActual = request.getParameter("passwordActual");
    	String nuevaContraseña = request.getParameter("newPass");

    	LoginDAO log = new LoginDAO();
    	boolean resultado = log.cambiarContraseña(email,passwordActual,nuevaContraseña);

    	if (resultado) {
    	    String mensaje = "Se ha actualizado la contraseña de manera exitosa - Por favor inicia sesión";
    	    request.setAttribute("mensaje", mensaje);
    	    RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
	        dispatcher.forward(request, response);
	        return;
    	} else {
    	    String mensaje = "Error al ingresar el e-mail y contraseña";
    	    request.setAttribute("mensaje", mensaje);
    	    RequestDispatcher dispatcher = request.getRequestDispatcher("Password.jsp");
	        dispatcher.forward(request, response);
	        return;
    	}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
