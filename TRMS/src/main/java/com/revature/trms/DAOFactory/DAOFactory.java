package com.revature.trms.DAOFactory;

public class DAOFactory {
	
	public static final int EMPLOYEE= 1;
	public static final int FORM = 2;
	
	public static DAOFactory getDAO(int i){
		switch(i){
		case 1:
			return new EmployeeDAOImpl();
			break;
		case 2:
			return new FormDAOImpl();
		}
		return null;
	}
	
	
}
