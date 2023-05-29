package com.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.bean.Registerbean;
import com.login.dao.RegisterDao;

/**
 * Servlet implementation class testservlet
 */

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RegisterDao regdao;

    public void init() {
    	regdao = new RegisterDao();
    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("Action").equals("Add Profile")) {
		      System.out.println("in");
		      PrintWriter printWriter = response.getWriter();
		String firstname = request.getParameter("Fname");
		String lastname = request.getParameter("Lname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		System.out.println("Firstname:"+firstname+"lastname:"+lastname+"username:"+username+"password"+password+"email"+email);
		Registerbean regbean = new Registerbean();

		regbean.setFName(firstname);
		regbean.setLname(lastname);
		regbean.setUsername(username);
		regbean.setPassword(password);
		regbean.setEmail(email);

		try {
			if (regdao.validate(regbean)) {
				// HttpSession session = request.getSession();
				// session.setAttribute("username",username);
				response.sendRedirect("Login.jsp");
			} else {
				HttpSession session = request.getSession();
				// session.setAttribute("user", username);
				response.sendRedirect("error.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		}

	}

	}
}
