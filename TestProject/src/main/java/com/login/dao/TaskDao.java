package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.login.DBconnection;
import com.login.bean.Taskbean;
public class TaskDao {

	public boolean addtask(Taskbean taskbean) {
	    // TODO Auto-generated method stub
	    Connection con = DBconnection.getConn();
	    
	    String sql = "insert into task(PersonID,dates,times,subject,descriptions,priority) values (1,?,?,?,?,?)";
	    //String sql = "insert into task(dates,times,task,descriptions) values (?,?,?,?)";
	   int i=0;
	    try {
	      PreparedStatement preparedStatement = con.prepareStatement(sql);


	     // preparedStatement.setInt(1, taskbean.getPersonID());
	      preparedStatement.setString(1,taskbean.getDateoftask());
	      preparedStatement.setString(2, taskbean.getTime());
	      preparedStatement.setString(3, taskbean.getSubject());
	      preparedStatement.setString(4, taskbean.getDescription());
	      preparedStatement.setString(5, taskbean.getPriority());
	      i = preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	      
	      e.printStackTrace();
	    }
	    if (i == 0) {
	      return false;
	    } else {
	      return true;
	    }
	  }
	  public boolean edittask(Taskbean taskbean) {
	    Connection connection = DBconnection.getConn();
	    String sql = "update task set PersonID=1,dates=?,times=?,subject=?,descriptions=?,priority=?";
	    sql += " where id=?";
	    int i = 0;
	    try {
	      PreparedStatement preparedStatement = connection.prepareStatement(sql);
	      preparedStatement.setString(1, taskbean.getDateoftask());
	      preparedStatement.setString(2, taskbean.getTime());
	      preparedStatement.setString(3, taskbean.getSubject());
	      preparedStatement.setString(4, taskbean.getDescription());
	      preparedStatement.setString(5, taskbean.getPriority());
	      preparedStatement.setInt(6, taskbean.getId());
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
	  public boolean deleteTask(int id) {
	    Connection connection = DBconnection.getConn();
	    String sql = "delete from task where id=?";
	    int i = 0;
	    try {
	      PreparedStatement preparedStatement = connection.prepareStatement(sql);
	      preparedStatement.setInt(1, id);
	     i= preparedStatement.executeUpdate();
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

