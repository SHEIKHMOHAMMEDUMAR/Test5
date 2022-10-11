package com.courier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CourierServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		CourierService cs = new CourierService();
		CourierDao cd = new CourierDao();
		Details d = new Details();
		d.setUserName((String)request.getParameter("user"));
		d.setPhoneNo((String)request.getParameter("mobile"));
		d.setSrc((String)request.getParameter("pick"));
		d.setDest((String)request.getParameter("drop"));
		d.setDistance(Double.valueOf(request.getParameter("distance")));
		d.setWeight(Double.valueOf(request.getParameter("weight")));
		HttpSession s = request.getSession();
		s.setAttribute("user", d.getUserName());
		s.setAttribute("distance", d.getDistance());
		s.setAttribute("weight", d.getWeight());
		try {
			cd.courierDao(d);
			RequestDispatcher rd = request.getRequestDispatcher("PayableAmount.jsp");
			rd.forward(request, response);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
