package com.revature.trms.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.revature.trms.DAO.DAOFactory;
import com.revature.trms.DAO.FormDAO;
import com.revature.trms.objects.EmployeeLogin;
import com.revature.trms.objects.ReimbursementForm;

/**
 * Servlet implementation class GetListOfCurrentForms
 */
@WebServlet("/getListOfCurrentForms")
public class GetListOfCurrentForms extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetListOfCurrentForms() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FormDAO dao;
		String listOfCurrentFormsStr = null;
		List<ReimbursementForm> listOfCurrentForms = null;
		List<ReimbursementForm> listOfCurrentFormsJson = null;

		try {
			dao = (FormDAO) DAOFactory.getDAO("FormDAO");
			
			// get user credentials
			EmployeeLogin e = (EmployeeLogin) request.getSession().getAttribute("EmployeeLogin");
			
			ObjectMapper om = new ObjectMapper();
			
			// get the list of current forms from the employee session
			listOfCurrentForms = dao.getEmployeeSubmitedForms(e.getPID());
			
			// get a string representation of the list
			listOfCurrentFormsStr = om.writeValueAsString(listOfCurrentForms);

			// parse the string list to a json object
			//listOfCurrentFormsJson = om.readValue(listOfCurrentFormsStr, new TypeReference<List<ReimbursementForm>>(){});
			

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		for(ReimbursementForm rf : listOfCurrentForms) {
			System.out.println(rf);
			response.getWriter().write(rf.getCity());
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
