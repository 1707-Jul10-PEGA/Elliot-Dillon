package com.revature.trms.DAO;

import com.revature.trms.objects.ReimbursementForm;

public interface FormDAO {
	
	public boolean submitRiembursementForm(ReimbursementForm form);
	
	public ReimbursementForm getEmployeeSubmitedForms(int e_id);
	
	public ReimbursementForm getPendingRequests(int s_id);
	
}
