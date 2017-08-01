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
import com.revature.trms.DAO.FormDAO;
import com.revature.trms.objects.EmployeeLogin;

/**
 * Servlet implementation class getCurrentFormServlet
 */
@WebServlet("/getCurrentFormCount")
public class getCurrentFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getCurrentFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			FormDAO dao;
			String currentFormCount = null;
			try {
				dao = (FormDAO) DAOFactory.getDAO("FormDAO");
				
				// get user credentials
				EmployeeLogin e = (EmployeeLogin) request.getSession().getAttribute("EmployeeLogin");
				
				ObjectMapper om = new ObjectMapper();
				
				// get the number of current forms
				int numCurrentForms = dao.getEmployeesCurrentSubmissionCount(e.getPID());
				
				currentFormCount = om.writeValueAsString(numCurrentForms);

			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			// print out the current count and write to the response
			System.out.println(currentFormCount);
			response.getWriter().write(currentFormCount);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
