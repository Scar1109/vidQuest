package com.User.servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.User.util.User;
import com.User.util.UserDbUtill;




@WebServlet( urlPatterns ="/UserControllerServlet")


public class UserCreateServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		   
		    String firstName = request.getParameter("firstName");
	        String lastName = request.getParameter("lastName");
	        String email = request.getParameter("email");
	        String pNo = request.getParameter("pNo");
	        String pwd = request.getParameter("pwd");
	        String username = request.getParameter("username");
	        
	        User user = new  User(firstName,lastName,email,pNo,pwd,username);
	        
	        
	        
	        UserDbUtill.adduser(user);
			
	     // Redirect to a success page or show a success message
	        response.sendRedirect("index.jsp");
	}

	
}