package com.revature.trms.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.trms.DAO.DAOFactory;
import com.revature.trms.DAO.FormDAO;
import com.revature.trms.DAO.FormDAOImpl;
import com.revature.trms.objects.ReimbursementForm;



@MultipartConfig
@WebServlet("/reimbursementForm")
public class ReimbursementFormServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("reimbursementform.html").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReimbursementForm rf = new ReimbursementForm();
		boolean isSuccessful = false;
		rf.setTitle(req.getParameter("title"));
		rf.setPID(Integer.parseInt(req.getParameter("pid")));
		rf.setStreet(req.getParameter("street"));
		rf.setCity(req.getParameter("city"));
		rf.setState(req.getParameter("state"));
		rf.setZipCode(req.getParameter("zipcode"));
		rf.setTypeOfEvent(req.getParameter("type_of_event"));
		
		rf.setStartDate(req.getParameter("start_date"));
		rf.setStartTime(req.getParameter("start_time"));
		rf.setRequestedAmount(Double.parseDouble(req.getParameter("requested_amount")));
		rf.setEstimatedTimeOff(Integer.parseInt(req.getParameter("time_off")));
		rf.setDescription(req.getParameter("description"));
		rf.setGradingFormat(req.getParameter("grading_format"));
		
		
		
		try {
			FormDAO dao = (FormDAOImpl)DAOFactory.getDAO("FormDAO");
			isSuccessful = dao.submitReimbursementForm(rf);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			isSuccessful = false;
			e.printStackTrace();
		}
		
		if(isSuccessful){
			req.getSession().setAttribute("message", "Successfully submitted a reimbursement form");;
			resp.sendRedirect(req.getContextPath()+"/home");
		}else{
			req.getSession().setAttribute("message", "There was a problem submitting your reimbursement form");
			System.out.println("There was a problem");
			req.getRequestDispatcher("reimbursementform.html").forward(req, resp);
			
		}
		
	}
	
	
	
}
