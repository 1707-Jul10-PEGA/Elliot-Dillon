package com.revature.trms.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.revature.trms.objects.Employee;

public class EmployeeDAOImpl extends DAOFactory implements EmployeeDAO {

	Connection conn = null;
	
	// set up a connection
	public void setup() throws SQLException {
		conn = DAOFactory.getConnection();
	}
	
	// no-args constructor
	public EmployeeDAOImpl() throws SQLException {
		setup();
	}

	@Override
	public int insertEmployee(int P_ID, String firstName, String lastName, String street, String city, String state,
								String zip, String phone, String email, String password) throws SQLException {
		String sql = "INSERT INTO EMPLOYEE "
					+ "(P_ID, FIRSTNAME, LASTNAME, STREET, CITY, STATE, ZIP_CODE, PHONE_NUMBER, EMAIL, PASSWORD) "
					+ "VALUES "
					+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pStmt = conn.prepareStatement(sql);

		pStmt.setInt(1, P_ID);
		pStmt.setString(2, firstName);
		pStmt.setString(3, lastName);
		pStmt.setString(4, street);
		pStmt.setString(5, city);
		pStmt.setString(6, state);
		pStmt.setString(7, zip);
		pStmt.setString(8, phone);
		pStmt.setString(9, email);
		pStmt.setString(10, password);
		
		return pStmt.executeUpdate();
	}

	/* TODO: Locataion for reimbusement form is the location of the event, NOT the employee */
	@Override
	public int insertForm(int P_ID, String event, String format, String description, String justification, int hoursOff, 
							String finalGrade, String status, String title) throws SQLException {
		String sql = "INSERT INTO REIMBURSEMENT_FORMS "
				+ "(P_ID, )"
				+ "VALUES"
				+ "()";
		return 0;	
	}
	
	@Override
	public boolean deleteEmployee() {
		return false;	
	}
	
	@Override
	public boolean updateEmployee() {
		return false;
	}

	@Override
	public Employee getEmployee(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getEmployeeSupervisor(int e_id, String department) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getDirectManager(String department) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getHeadOfDepartment(String department) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getBenco() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
