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
 * Servlet implementation class DeliveryPersonRegister
 */
public class DeliveryPersonRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryPersonRegister() {
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
			int dpid=0;
			int fid = Station.getFid();
			String dname = request.getParameter("dname");
			String dcontact = request.getParameter("dcontact");
			String demail = request.getParameter("demail");
			String dpassword = request.getParameter("dpassword");
			String dcity = request.getParameter("dcity");
			String daddress = request.getParameter("daddress");
			String dpincode = request.getParameter("dpincode");
			Connection con = ConnectDB.dbCon();
			PreparedStatement ps = con.prepareStatement("insert into dperson values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, dpid);
			ps.setInt(2,fid);
			ps.setString(3, dname);
			ps.setString(4, dcontact);
			ps.setString(5, demail);
			ps.setString(6, dpassword);
			ps.setString(7, dcity);
			ps.setString(8, daddress);
			ps.setString(9, dpincode);
			int i = ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("fuelstation_dashboard.html");
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

	
