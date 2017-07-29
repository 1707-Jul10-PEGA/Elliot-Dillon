package com.revature.trms.DAO;

import java.sql.SQLException;

import com.revature.trms.objects.Employee;

public interface EmployeeDAO {

	public int insertEmployee(int P_ID, String firstName, String lastName, String street, String city, String state, 
							String zip, String phone, String email, String password) throws SQLException;

	// insert a form with the given information into the database
	public int insertForm(int P_ID, String event, String format, String description, String justification, 
							int hoursOff, String finalGrade, String status, String title) throws SQLException;
	
	public boolean deleteEmployee();

	public boolean updateEmployee();
	
	public Employee getEmployee(String email,String password) throws SQLException;
	
	public Employee getEmployeeSupervisor(int e_id,String department) throws SQLException;
	
	public Employee getDirectManager(String department) throws SQLException;
	
	public Employee getHeadOfDepartment(String department) throws SQLException;
	
	public Employee getBenco() throws SQLException;
	
}
