package com.revature.trms.servlet;

import java.io.IOException;
import java.sql.SQLException;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.revature.trms.DAO.DAOFactory;
import com.revature.trms.DAO.FormDAO;
import com.revature.trms.objects.EmployeeLogin;
import com.revature.trms.objects.ReimbursementForm;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getForm")
public class GetFormServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FormDAO dao = null;
		String formStr = null;
		ReimbursementForm resultRf = null;
		
		try {
			dao = (FormDAO) DAOFactory.getDAO("FormDAO");
			
			ReimbursementForm rf = (ReimbursementForm) req.getSession().getAttribute("ReimbursementForm");
			
			ObjectMapper om = new ObjectMapper();
			
			resultRf = dao.getReimbursementForm(rf.getFID());
			
			formStr = om.writeValueAsString(resultRf);
			
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		resp.getWriter().write(formStr);
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	
	
}
