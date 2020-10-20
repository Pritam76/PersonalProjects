package corePackage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DummyDBpackage.checkLogin;

/**
 * Servlet implementation class loginCheck
 */
@WebServlet("/checklogin")
public class loginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roll=String.valueOf(request.getParameter("rollno"));
		String pass=request.getParameter("password");
		checkLogin x1=new checkLogin();
		boolean bool=x1.rightCredentials(roll, pass);
		if(bool){
			HttpSession session=request.getSession();
			session.setAttribute("rollNumber", roll);
			response.sendRedirect("StudentWelcome.jsp");
			System.out.println("Logged in");
		}
		else{
			System.out.println("not Logged in");
			response.sendRedirect("Login.jsp");
		}
		
	}

}
