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
 * Servlet implementation class FuelStationLogin
 */
public class FuelStationLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FuelStationLogin() {
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
			int fid=0;
			String femail = request.getParameter("femail");
			Station.setFemail(femail);
			String fpassword = request.getParameter("fpassword");
			Connection con = ConnectDB.dbCon();
			PreparedStatement ps = con.prepareStatement("select * from fuelstation where (femail=? and fpassword=?) and fstatus=?");
			ps.setString(1, femail);
			ps.setString(2, fpassword);
			ps.setString(3, "Approve");
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				Station.setFid(rs.getInt(1));
				Station.setFid(rs.getInt(1));
				response.sendRedirect("fuelstation_dashboard.html");
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
