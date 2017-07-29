package com.revature.trms.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.revature.trms.objects.Employee;

public class EmployeeDAOImpl extends DAOFactory implements EmployeeDAO {

	private Connection conn = null;
	private PreparedStatement pStmt;
	// setup a connection
	public void setup() throws SQLException {
		conn = DAOFactory.getConnection();
	}
	
	public void closeResources() throws SQLException{
		conn.close();
		pStmt.close();
	}
	
	// no-args constructor
	public EmployeeDAOImpl() throws SQLException {
		setup();
	}

	@Override
	public int insertEmployee(int PID, String firstName, String lastName, String street, String city, String state,
								String zip, String phone, String email, int titleID, int departmentID, 
								float availableReimbursement, String password) throws SQLException {
		String sql = "INSERT INTO EMPLOYEE "
					+ "(P_ID, FIRSTNAME, LASTNAME, STREET, CITY, STATE, ZIP_CODE, PHONE_NUMBER, EMAIL, TITLE_ID, DEPARTMENT_ID, AVAILABLE_REIMBURSEMENT, PASSWORD) "
					+ "VALUES "
					+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		pStmt = conn.prepareStatement(sql);

		pStmt.setInt(1, PID);
		pStmt.setString(2, firstName);
		pStmt.setString(3, lastName);
		pStmt.setString(4, street);
		pStmt.setString(5, city);
		pStmt.setString(6, state);
		pStmt.setString(7, zip);
		pStmt.setString(8, phone);
		pStmt.setString(9, email);
		pStmt.setInt(10, titleID);
		pStmt.setInt(11, departmentID);
		pStmt.setFloat(12, availableReimbursement);
		pStmt.setString(13, password);
		
		closeResources();
		return pStmt.executeUpdate();
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
	public Employee getEmployee(int PID) throws SQLException {
		Employee employee = new Employee();
		String sql = "SELECT P_ID, FIRSTNAME, LASTNAME, STREET, CITY, STATE, ZIP_CODE, PHONE_NUMBER, EMAIL, TITLE_ID, DEPARTMENT_ID, AVAILABLE_REIMBURSEMENT, PASSWORD "
					+ "FROM EMPLOYEE "
					+ "WHERE P_ID=?";
		setup();//establish connection
		pStmt = conn.prepareStatement(sql);
		pStmt.setInt(1, PID);
		
		ResultSet rs = pStmt.executeQuery();
		rs.next();
		
		employee.setPID(rs.getInt(1));
		employee.setFirstName(rs.getString(2));
		employee.setLastName(rs.getString(3));
		employee.setStreet(rs.getString(4));
		employee.setCity(rs.getString(5));
		employee.setState(rs.getString(6));
		employee.setZipCode(rs.getString(7));
		employee.setPhoneNumber(rs.getString(8));
		employee.setEmail(rs.getString(9));
		employee.setTitleID(rs.getInt(10));
		employee.setDepartmentID(rs.getInt(11));
		employee.setAvailableReimbursement(rs.getFloat(12));
		employee.setPassword(rs.getString(13));
		closeResources();
		return employee;
	}
	
	public Employee getEmployee(String username, String password)throws SQLException{
		Employee employee = new Employee();
		String sql = "SELECT P_ID, FIRSTNAME, LASTNAME, STREET, CITY, STATE, ZIP_CODE, PHONE_NUMBER, EMAIL, TITLE_ID, DEPARTMENT_ID, AVAILABLE_REIMBURSEMENT, PASSWORD "
					+ "FROM EMPLOYEE "
					+ "WHERE EMAIL=? AND PASSWORD = ?";
		setup();//establish connection
		pStmt = conn.prepareStatement(sql);
		pStmt.setString(1, username);
		pStmt.setString(2, password);
		
		ResultSet rs = pStmt.executeQuery();
		rs.next();
		
		employee.setPID(rs.getInt(1));
		employee.setFirstName(rs.getString(2));
		employee.setLastName(rs.getString(3));
		employee.setStreet(rs.getString(4));
		employee.setCity(rs.getString(5));
		employee.setState(rs.getString(6));
		employee.setZipCode(rs.getString(7));
		employee.setPhoneNumber(rs.getString(8));
		employee.setEmail(rs.getString(9));
		employee.setTitleID(rs.getInt(10));
		employee.setDepartmentID(rs.getInt(11));
		employee.setAvailableReimbursement(rs.getFloat(12));
		closeResources();
		return employee;
		
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
