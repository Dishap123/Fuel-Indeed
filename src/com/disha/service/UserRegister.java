package com.disha.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.disha.database.ConnectDB;

/**
 * Servlet implementation class UserRegister
 */
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	
		try
		{
			int uno=0;
			String uname = request.getParameter("uname");
			String ucontact = request.getParameter("ucontact");
			String uemail = request.getParameter("uemail");
			String upassword = request.getParameter("upassword");
			String ucity = request.getParameter("ucity");
			String uaddress = request.getParameter("uaddress");
			String upincode = request.getParameter("upincode");
			Connection con = ConnectDB.dbCon();
			PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, uno);
			ps.setString(2, uname);
			ps.setString(3, ucontact);
			ps.setString(4, uemail);
			ps.setString(5, upassword);
			ps.setString(6, ucity);
			ps.setString(7, uaddress);
			ps.setString(8, upincode);
			int i = ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("user_dashboard.html");
			}
			else
			{
				response.sendRedirect("error.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}

	
