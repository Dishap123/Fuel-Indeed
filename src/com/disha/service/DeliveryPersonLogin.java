package com.disha.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.disha.database.ConnectDB;

/**
 * Servlet implementation class DeliveryPersonLogin
 */
public class DeliveryPersonLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryPersonLogin() {
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
			String demail = request.getParameter("demail");
			String dpassword = request.getParameter("dpassword");
			Connection con = ConnectDB.dbCon();
			PreparedStatement ps = con.prepareStatement("select * from dperson where demail=? and dpassword=?");
			ps.setString(1, demail);
			ps.setString(2, dpassword);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				Station.setDpid(rs.getInt(1));
				response.sendRedirect("deliveryPerson_dashboard.html");
			}
			else
			{
				response.sendRedirect("register.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	
	
	

}
