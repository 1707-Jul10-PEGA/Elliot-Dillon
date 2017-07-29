package com.revature.trms.DAO;

import java.sql.SQLException;

import com.revature.trms.objects.Employee;

public interface EmployeeDAO {

	// insert an employee with the given information into the database
	// TODO: Logic with title Id, department ID
	// title id: supervisor, head, benco, direct manager (edge case: head/supervisor)
	// dept id: geology, etc
	// start indicies at 1
	public int insertEmployee(int P_ID, String firstName, String lastName, String street, String city, String state, 
							String zip, String phone, String email, String password) throws SQLException;
	
	public boolean deleteEmployee() throws SQLException;

	public boolean updateEmployee() throws SQLException;
	
	// save information from an employee to an employee object
	// TODO: Could return a result set of given information instead of object
	public Employee getEmployee(int P_ID) throws SQLException;
	
	public Employee getEmployeeSupervisor(int e_id,String department) throws SQLException;
	
	public Employee getDirectManager(String department) throws SQLException;
	
	public Employee getHeadOfDepartment(String department) throws SQLException;
	
	public Employee getBenco() throws SQLException;
	
}
