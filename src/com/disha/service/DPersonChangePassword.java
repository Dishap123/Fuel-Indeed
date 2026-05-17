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
 * Servlet implementation class DPersonChangePassword
 */
public class DPersonChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DPersonChangePassword() {
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
		try{
	    	
	    	
	    	String demail=request.getParameter("demail");
	    	String dpassword=request.getParameter("dpassword");
	    	String npassword=request.getParameter("npassword");
	    	System.out.println("npassword: "+npassword);
	    	
	    	//Estabilish a connection 
	    	Connection con=ConnectDB.dbCon();
	    	
	    	
	    	System.out.println("delete query is going to  fire!!!!!!!!!!!!!!");
	    	//preparing a Statement
	    	
	    	PreparedStatement ps=con.prepareStatement("update dperson set dpassword=? where demail=? and dpassword=?");
	    	
	    	ps.setString(1,npassword);
	    	ps.setString(2,demail);
	    	ps.setString(3,dpassword);
	    	
	    	
	    	System.out.println("in approve stations update qery");
	    	
	    	 int i=ps.executeUpdate();
	    	 
	    	 if(i>0){
	    		 
	    		 response.sendRedirect("user_ChangePassword.html");
	    		 System.out.println("in approve stations update qery");
	    	 }
	    	 else{
	    		 
	    		 response.sendRedirect("index.html");
	    	 }
	    	
	    	
	    }
	    
	    catch(Exception e){
	    	
	    }
	}

}
