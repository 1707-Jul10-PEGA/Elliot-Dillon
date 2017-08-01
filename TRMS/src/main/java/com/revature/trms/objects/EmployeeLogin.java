package com.revature.trms.objects;

public class EmployeeLogin {

	private int PID;
	private String firstName;
	private String lastName;
	private String Department;
	private String Title;
	
	public EmployeeLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EmployeeLogin(int pID, String firstName, String lastName, String department, String title) {
		super();
		PID = pID;
		this.firstName = firstName;
		this.lastName = lastName;
		Department = department;
		Title = title;
	}

	public int getPID() {
		return PID;
	}

	public void setPID(int pID) {
		PID = pID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDepartment() {
		return Department;
	}

	public void setDepartment(String department) {
		Department = department;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	@Override
	public String toString() {
		return "EmployeeLogin [PID=" + PID + ", firstName=" + firstName + ", lastName=" + lastName + ", Department="
				+ Department + ", Title=" + Title + "]";
	}
	
	
	
	
}
