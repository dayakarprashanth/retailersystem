/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.*;

public class DB {
	 public Connection Connect()
		{
			Connection con=null;
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/retailer_system","root","root");
			}
			catch (ClassNotFoundException | SQLException e) 
			{
	                    System.out.println(e);
			}
			return con;
		}
}
