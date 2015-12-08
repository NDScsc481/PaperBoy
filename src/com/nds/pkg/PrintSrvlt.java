package com.nds.pkg;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connections.print;

/**
 * Servlet implementation class RoutPrintSrvlt
 */
@WebServlet(name = "PrintSrvlt", urlPatterns = { "/PrintSrvlt" })
public class PrintSrvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrintSrvlt() {
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
		String s = request.getParameter("sub");
		if(s.equals("Delivery Report")){
			String [] c = print.getDeliveryCustomers();
			String result = "[";
		    for(int i = 0; i < c.length; i+=2) {
		        result += "\"" + c[i] + "\"";
		        if(i < c.length - 1) {
		            result += ", ";
		        }
		    }
		    result += "]";
		    String result1 = "[";
		    for(int i = 1; i < c.length; i+=2) {
		        result1 += "\"" + c[i] + "\"";
		        if(i < c.length - 1) {
		            result1 += ", ";
		        }
		    }
		    result1 += "]";
		    int num = Integer.parseInt(request.getParameter("numDriver"));
		    int numPerD = ((c.length+2)/2)/num;
		    request.setAttribute("numD", numPerD);
			request.setAttribute("cToday", result);
			request.setAttribute("cInfo", result1);
			request.getRequestDispatcher("/MapTest.jsp").forward(request, response);
		}
		else{
			if(s.equals("Delivery")){
				String [] c = print.getDeliveryCustomers();
				request.setAttribute("cLength", c.length/2);
				request.getRequestDispatcher("/PrintDelivery.jsp").forward(request, response);
			}
		}
	}
}
