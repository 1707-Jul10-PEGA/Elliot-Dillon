package com.revature.trms.DAO;

import com.revature.trms.objects.Employee;

public interface EmployeeDAO {
	
	public Employee getEmployee(String email,String password);
	
	public Employee getEmployeeSupervisor(int e_id,String department);
	
	public Employee getDirectManager(String department);
	
	public Employee getHeadOfDepartment(String department);
	
	public Employee getBenco();
}
