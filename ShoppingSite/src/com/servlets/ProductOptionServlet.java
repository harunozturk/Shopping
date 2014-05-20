package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductOptionServlet
 */
@WebServlet("/ProductOptionServlet")
public class ProductOptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductOptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchword = request.getParameter("keyword");
		String selectedValue1 = request.getParameter("category");
		String selectedValue2 =   request.getParameter("cost1");
		String selectedValue3 = request.getParameter("cost2");
		
		
		String category = selectedValue1;
		String cost1 = selectedValue2;
		String cost2 = selectedValue3;
		
		if (category.isEmpty())
		{
			category = "hepsi";
		}

		
		ProductBean selectDetails = RunUtils.selectDetailsProduct(category, cost1, cost2,searchword);
		
		request.setAttribute("selectCategory", selectDetails);
		 String address = "category.jsp";
		    RequestDispatcher dispatcher =
		      request.getRequestDispatcher(address);
		    dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
