package com.revature.trms.DAO;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public abstract class DAOFactory {
	
	public static final String EMPLOYEE= "EmployeeDAO";
	public static final String FORM = "FormDAO";
	private static Connection connection;
	
	public static synchronized Connection getConnection() throws SQLException{
		Properties prop = new Properties();
		try{
			prop.load(new FileReader("resources/datasource.properties"));
		}catch(IOException e){
			e.printStackTrace();
		}
		String url = prop.getProperty("url");
		String username = prop.getProperty("username");
		String password = prop.getProperty("password");
		if(connection == null){
			connection = DriverManager.getConnection(url, username, password);
		}
		
		if(connection.isClosed()){
			connection = DriverManager.getConnection(url, username, password);
		}
		return connection;
	}
	
	public static void closeConnection() throws SQLException{
		connection.close();
	}
	
	public static DAOFactory getDAO(String daoType) throws SQLException {
		switch(daoType){
		
		case "EmployeeDAO":
			return new EmployeeDAOImpl();
			
		case "FormDAO":
			return new FormDAOImpl();
		default:
			return null;
		}
		
	}
	
	
}
