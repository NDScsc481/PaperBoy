package com.nds.pkg;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connections.customer;

/**
 * Servlet implementation class CustSearchSrvlt
 */
@WebServlet("/CustSearchSrvlt")
public class CustSearchSrvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustSearchSrvlt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = ((String)request.getParameter("sub"));
		if(s.equals("Submit Name")){
			String n = ((String)request.getParameter("n")).trim();
			if(!n.matches("^[a-zA-Z ]+$")){
				request.setAttribute("names", n);
				request.setAttribute("errorMsg", "Please enter names only.");
				request.getRequestDispatcher("/CustomerLookup.jsp").forward(request, response);
			}
			String[] names = n.split("\\s+");
			if(Array.getLength(names)>2){
				request.setAttribute("names", n);
				request.setAttribute("errorMsg", "Please enter two name entries maximum.");
				request.getRequestDispatcher("/CustomerLookup.jsp").forward(request, response);
			}
			ArrayList<String> results;
			if(Array.getLength(names)==1)
				results = customer.getSearchCustomers(names[0], "");
			else
				results = customer.getSearchCustomers(names[0], names[1]);
			String r="";
			for(int i=0;i<results.size();i++){
				r+=results.get(i)+"<br><br><br>";
			}
			request.setAttribute("results", r);
			request.getRequestDispatcher("/CustomerLookup.jsp").forward(request, response);
		}
		else{
			if(s.equals("Submit ID")){
				
			}
		}
	}

}
