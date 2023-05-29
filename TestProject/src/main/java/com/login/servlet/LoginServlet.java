package com.login.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.bean.Loginbean;
import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Loginbean loginBean = new Loginbean();
		
		
		loginBean.setUsername(username);
		loginBean.setPassword(password);
		try {
			if (loginDao.validate(loginBean)) {
				 HttpSession session = request.getSession();
				 session.setAttribute("username",username);
				response.sendRedirect("index.jsp");
			} else {
				HttpSession session = request.getSession();
				 session.setAttribute("user", username);
				response.sendRedirect("error.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		}
	}

}
