package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IMaintenace;
import service.MaintenanceImp;




/**
 * Servlet implementation class DeleteBusServlet
 */
@WebServlet("/DeleteMaintenanceServlet")
public class DeleteMaintenanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMaintenanceServlet() {
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
		response.setContentType("text/html");
		String VehicleID =request.getParameter("VehicleID");	
		
		IMaintenace imaintenance = new MaintenanceImp();
		imaintenance.RemoveMaintenanceDetails(VehicleID);
	
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Add_Maintenance_Details.jsp");
		dispatcher.forward(request, response);
	}

}
