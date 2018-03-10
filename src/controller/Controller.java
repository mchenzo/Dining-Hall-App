package controller;

/* This file contains the Controller class. The controller class is a
 * Java servlet that acts as the controller in the MVC architecture of
 * our web app. 
 * Contributors: Michael
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 * All requests from individual pages are routed through 
 * this servlet. The doGet and doPost methods then forward or redirect
 * the user to the correct location with the required parameters.
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
    }

	/**
	* doGet method, handles all GET requests to the Controller and forwards user to the 
	* requested page
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
													throws ServletException, IOException {
		String action = request.getParameter("action");
		String page;
		
		//handle requests to different pages
		switch(action) {
			case "checkout": page = "/checkoutHandler.jsp";
			break;
			case "64": page = "/64.jsp";
			break;
			case "cv": page = "/cv.jsp";
			break;
			case "cafev": page = "/cafev.jsp";
			break;
			case "ovt": page = "/ovt.jsp";
			break;
			case "pines": page = "/pines.jsp";
			break;
			case "foodworx": page = "/foodworx.jsp";
			break;
			case "64north": page = "/64n.jsp";
			break;
			case "goodys": page = "/goodys.jsp";
			break;
			case "bistro": page = "/bistro.jsp";
			break;
			case "roots": page = "/roots.jsp";
			break;
			case "clubmed": page = "/clubmed.jsp";
			break;
			case "world": page = "/world.jsp";
			break;
			default: page = "/index.jsp";
		}
		
		//forwards the user to page
		getServletContext().getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * doPost method, handles POST requests to the Controller and redirects the user
	 * to the correct page with the required parameters
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
													throws ServletException, IOException {
		String action = request.getParameter("action");
		String page;
		
		switch(action) {
			case "checkout": page = "/checkoutHandler.jsp";
			break;
			case "complete": page = "/orderComplete.jsp";
			break;
			default: page = "/index.jsp";
		}
		
		if (action.equals("checkout")) {
			//loop through all orders and retrieve non-null parameters
			for (int i = 0; i < 15; i++) {
				if (request.getParameter("order" + i) != null) {
					
					//for the first parameter, add the initial ?
					if (page.indexOf('?') == -1) {
						page += "?";
					} else {
						page += "&";
					}
					
					page += "order" + i + "=";
					String input = request.getParameter("order" + i);
					//remove trailing slash that messes up URL
					input = input.replaceAll("/$", "");
					page += input;
				}
			}
		} else if (action.equals("complete")) {
			//retrieve the email, first name and last name params from URL
			page += "?email=";
			String email = request.getParameter("email");
			email = email.replaceAll("/$", "");
			page += email;
			
			page += "&first=";
			String firstName = request.getParameter("first-name");
			firstName = firstName.replaceAll("/$", "");
			page += firstName;
			
			page += "&last=";
			String lastName = request.getParameter("last-name");
			lastName = lastName.replaceAll("/$", "");
			page += lastName;
		}
		
		//Client-side redirect to new page
		response.sendRedirect(page);
	}

}
