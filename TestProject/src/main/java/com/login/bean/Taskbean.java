package com.login.bean;

import java.io.Serializable;
public class Taskbean implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private int personID;
	private String dateoftask;
	private String time;
	private String subject;
	private String priority;
	private String description;

	public String getSubject() {
		return subject;
	}

	public String getDateoftask() {
		return dateoftask;
	}

	public void setDateoftask(String dateoftask) {
		this.dateoftask = dateoftask;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPersonID() {
		return personID;
	}

	public void setPersonID(int personID) {
		this.personID = personID;
	}



	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Taskbean [id=" + id + ", personID=" + personID + ", dateoftask=" + dateoftask + ", time=" + time
				+ ", subject=" + subject + ", priority=" + priority + ", description=" + description + "]";
	}

	public Taskbean() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}
