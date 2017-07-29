package com.revature.trms.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.revature.trms.objects.ReimbursementForm;

public class FormDAOImpl extends DAOFactory implements FormDAO {

	Connection conn = null;
	
	// setup a connection
	public void setup() throws SQLException {
		conn = DAOFactory.getConnection();
	}	
	
	// no-args constructor
	public FormDAOImpl() throws SQLException {
		setup();	
	}

	@Override
	public int insertForm(int P_ID, String startDate, String startTime, String street, String city, String state, String zip,
							float amount, String event, String format, String description, String justification, 
							int hoursOff, String finalGrade, String presentation, String status, String title) throws SQLException {
		String sql = "INSERT INTO REIMBURSEMENT_FORMS "
				+ "(P_ID, START_DATE, START_TIME, STREET_ADDRESS, CITY, STATE, ZIP_CODE, REQUESTED_AMOUNT, TYPE_OF_EVENT, GRADING_FORMAT,"
				+ " DESCRIPTION, WORK_RELATED_JUSTIFICATION, ESTIMATED_TIME_OFF, FINAL_GRADE, FINAL_PRESENTATION, STATUS, TITLE)"
				+ "VALUES"
				+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pStmt = conn.prepareStatement(sql);
		
		pStmt.setInt(1, P_ID);
		pStmt.setString(2, startDate);
		pStmt.setString(3, startTime);
		pStmt.setString(4, street);
		pStmt.setString(5, city);
		pStmt.setString(6, state);
		pStmt.setString(7, zip);
		pStmt.setFloat(8, amount);
		pStmt.setString(9, event);
		pStmt.setString(10, format);
		pStmt.setString(11, description);
		pStmt.setString(12, justification);
		pStmt.setInt(13, hoursOff);
		pStmt.setString(14, finalGrade);
		pStmt.setString(15, presentation);
		pStmt.setString(16, status);
		pStmt.setString(17, title);
							
		return pStmt.executeUpdate();
	}

	@Override
	public boolean submitRiembursementForm(ReimbursementForm form) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ReimbursementForm getEmployeeSubmitedForms(int e_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReimbursementForm getPendingRequests(int s_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
