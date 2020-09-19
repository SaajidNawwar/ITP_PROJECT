package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Ipayment;

import service.Paymentservice;

/**
 * Servlet implementation class DeletePayment
 */
@WebServlet("/DeletePayment")
public class DeletePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePayment() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		

		int payID=Integer.parseInt(request.getParameter("payID"));
	
		
		
		
		
		
		
		
		
		

		//System.out.println("delete servlet"+name);
		
		Ipayment Ip = new Paymentservice();
		Ip.removePayment(payID);
		
	
	
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ViewPayment.jsp");
		dispatcher.forward(request, response);
		
	
		
		
		
		
		
	}

}
