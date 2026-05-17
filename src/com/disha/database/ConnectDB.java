package com.disha.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB 
{
	public static Connection con=null;
	public static Connection dbCon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/offerdb", "root", "");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
		
	}
	
}
