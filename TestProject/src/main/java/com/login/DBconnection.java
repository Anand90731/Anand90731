package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	 public static Connection getConn() {
		    String loadDriver="com.mysql.jdbc.Driver";
		    String dbURL="jdbc:mysql://localhost:3306/test";
		    String dbUSERNAME="root";
		    String dbPASSWORD="root";
		    
		    Connection con = null;
		    try {
		      Class.forName(loadDriver);
		      con = DriverManager.getConnection(dbURL,dbUSERNAME,dbPASSWORD);
		    } catch (ClassNotFoundException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		    } catch (SQLException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		    }
		    return con;
}
}
