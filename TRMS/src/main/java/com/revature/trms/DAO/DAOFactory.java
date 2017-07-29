package com.revature.trms.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class DAOFactory {
	
	public static final String EMPLOYEE= "EmployeeDAO";
	public static final String FORM = "FormDAO";
	private static final String URL = "jdbc:oracle:thin:@trms.csir9vtt6sbq.us-east-1.rds.amazonaws.com:1521:ORCL";
	private static final String USERNAME = "admin";
	private static final String PASSWORD = "password";
	private static Connection connection;
	
	public static synchronized Connection getConnection() throws SQLException{
//		Properties prop = new Properties();
//		try{
//			prop.load(new FileReader("datasource.properties"));
//		}catch(IOException e){
//			e.printStackTrace();
//		}
//		String url = prop.getProperty("url");
//		String username = prop.getProperty("username");
//		String password = prop.getProperty("password");
		try {
			Class.forName("jdbc:oracle:thin");
		} catch (ClassNotFoundException e) {
			System.out.println("Could not register driver!");
			e.printStackTrace();
		}
		
		if(connection == null){
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		}
		
		if(connection.isClosed()){
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
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
