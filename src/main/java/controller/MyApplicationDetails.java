package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import beans.ApplicationDetails;
import dao.ApplicationDAO;

/**
 * Servlet implementation class MyApplicationDetails
 */
@WebServlet("/myApplicationDetails")
public class MyApplicationDetails extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int appId = Integer.parseInt(request.getParameter("applicationId"));

		ApplicationDAO dao = new ApplicationDAO();
		ApplicationDetails details = dao.getApplicationById(appId);

		request.setAttribute("details", details);

		request.getRequestDispatcher("myApplicationDetails.jsp").forward(request, response);
	}
}
