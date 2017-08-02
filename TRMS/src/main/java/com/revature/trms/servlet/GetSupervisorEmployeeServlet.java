package com.revature.trms.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.revature.trms.DAO.DAOFactory;
import com.revature.trms.DAO.EmployeeDAO;
import com.revature.trms.objects.Employee;

@WebServlet("/getSupervisorEmployee")
public class GetSupervisorEmployeeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pid = Integer.parseInt(req.getParameter("PID"));
		String employeeLogin = null;
		try {
			EmployeeDAO dao = (EmployeeDAO)DAOFactory.getDAO("EmployeeDAO");
			Employee e = dao.getEmployee(pid);
			ObjectMapper om = new ObjectMapper();
			employeeLogin = om.writeValueAsString(e);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(employeeLogin);
		//resp.setContentType("Application/JSON");
		resp.getWriter().write(employeeLogin);
		
	}
	
	
	
}
