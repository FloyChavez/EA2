package svl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import bean.usuario;
import dao.LoginDAO;

public class svlLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public svlLogin() {
        super();
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
    	response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		    
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		LoginDAO log = new LoginDAO();
		usuario us = log.logueo(email, password);

		if (us == null) {
			request.setAttribute("mensaje", "El correo o la contraseña no coinciden. Por favor vuelva a intentarlo");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
	        dispatcher.forward(request, response);
	        return;
			
		} else {
			response.sendRedirect("inicio.jsp");
			session.setAttribute("email", email);
		}
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
