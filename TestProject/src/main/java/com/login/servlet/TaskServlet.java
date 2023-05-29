package com.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.login.bean.Taskbean;
import com.login.dao.TaskDao;

/**
 * Servlet implementation class TaskServlet
 */
@WebServlet("/task")
public class TaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TaskDao taskdao;

	public void init() {
		taskdao = new TaskDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// place your code here
		if (request.getParameter("Action").equals("Add Task")) {
			System.out.println("Add task");
			PrintWriter printWriter = response.getWriter();
			Taskbean taskbean = new Taskbean();

			//int personid = Integer.parseInt(request.getParameter("personid"));
			//taskbean.setPersonID(personid);
			taskbean.setDateoftask(request.getParameter("dateoftask"));
			taskbean.setTime(request.getParameter("times"));
			taskbean.setSubject(request.getParameter("subject"));
			taskbean.setPriority(request.getParameter("priority"));
			taskbean.setDescription(request.getParameter("description"));
			boolean result = taskdao.addtask(taskbean);
			RequestDispatcher dispatcher = request.getRequestDispatcher("taskmaster.jsp");
			dispatcher.include(request, response);
			
		}
		
		if (request.getParameter("Action").equals("Edit")) {
			PrintWriter printWriter = response.getWriter();
			Taskbean taskbean = new Taskbean();
			TaskDao taskdao = new TaskDao();
			
			  try {
		    taskbean.setId(Integer.parseInt(request.getParameter("id")));
			
			//taskbean.setPersonID(Integer.parseInt(request.getParameter("id")));
		    String dates=request.getParameter("dateoftask").toString();
			taskbean.setDateoftask(dates);
		    taskbean.setTime(request.getParameter("times"));
			taskbean.setSubject(request.getParameter("subject"));
			taskbean.setPriority(request.getParameter("priority"));
			taskbean.setDescription(request.getParameter("description"));
			
			boolean result = taskdao.edittask(taskbean);
			System.out.println(result);
			RequestDispatcher dispatcher = request.getRequestDispatcher("taskmaster.jsp");
			dispatcher.include(request, response);
			printWriter.print("<br><h2>task Edited Successfully!!</h2>");
			  } catch (NumberFormatException e) {
		            System.out.println("NumberFormatException is handled");
		        }  
			  
		}
		
		
		
		
		
		
		
		
		if (request.getParameter("Action").equals("Delete")) {
			PrintWriter printWriter = response.getWriter();
			Taskbean taskbean = new Taskbean();
			TaskDao taskdao = new TaskDao();
			int id=Integer.parseInt(request.getParameter("id"));
			boolean result = taskdao.deleteTask(id);
			//System.out.println(result);
			if(result)
			{
				RequestDispatcher dispatcher = request.getRequestDispatcher("taskmaster.jsp");
				dispatcher.include(request, response);
				printWriter.print("<br><h2>deleted Successfully!!</h2>");
			}
			else
			{
				RequestDispatcher dispatcher = request.getRequestDispatcher("taskmaster.jsp");
				printWriter.print("<br><h2>No ID!!</h2>");
			}
		}
	}

}
