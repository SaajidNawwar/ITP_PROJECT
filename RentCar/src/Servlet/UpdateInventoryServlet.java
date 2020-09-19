package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.Inventory;
import service.IInventoryService;

import service.InventoryServiceimpl;

/**
 * Servlet implementation class UpdateInventoryServlet
 */
@WebServlet("/UpdateInventoryServlet")
public class UpdateInventoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateInventoryServlet() {
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
		
	

		Inventory inventory = new Inventory();
	
		
		inventory.setCarID(request.getParameter("cardid"));
		System.out.println(request.getParameter("cardid"));
		inventory.setModel(request.getParameter("model"));
		
		
		inventory.setDescription(request.getParameter("description"));
		
		inventory.setNoOfPassengers(Integer.parseInt(request.getParameter("noOfpass")));
		
		
		
		
		
		
		

		IInventoryService iinventoryService = new InventoryServiceimpl();
		iinventoryService.updateInventory(inventory);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view_inventories.jsp");
		dispatcher.forward(request, response);
		
	}

}
