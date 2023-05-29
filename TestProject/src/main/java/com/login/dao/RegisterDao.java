package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.login.DBconnection;
import com.login.bean.Registerbean;

public class RegisterDao {

	public boolean validate( Registerbean regbean)throws ClassNotFoundException{
	    
	    // TODO Auto-generated method stub
	    Connection con = DBconnection.getConn();
	    
	    
	    String sql = "insert into login (FirstName,email,LastName,Username,Password) values (?,?,?,?,?) ";
	    int i = 0;
	    try {
	      PreparedStatement preparedStatement = con.prepareStatement(sql);
	      preparedStatement.setString(1, regbean.getFName());
	      preparedStatement.setString(2,regbean.getEmail());
	      preparedStatement.setString(3,regbean.getLname());
	      preparedStatement.setString(4,regbean.getUsername());
	      preparedStatement.setString(5,regbean.getPassword());
	      i = preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    if (i == 0) {
	      return false;
	    } else {
	      return true;
	    }
	  }
}