package com.revature.trms.DAO;

import java.sql.SQLException;

import com.revature.trms.objects.ReimbursementForm;

public interface FormDAO {

	// insert a form with the given information into the database
	public int insertForm(int P_ID, String startDate, String startTime, String street, String city, String state, String zip,
							float amount, String event, String format, String description, String justification, 
							int hoursOff, String finalGrade, String presentation, String status, String title) throws SQLException;
	
	public boolean submitRiembursementForm(ReimbursementForm form);
	
	public ReimbursementForm getEmployeeSubmitedForms(int e_id);
	
	public ReimbursementForm getPendingRequests(int s_id);
	
}
