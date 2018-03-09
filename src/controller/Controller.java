package controller;






import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String page;
		
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
		
		getServletContext().getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String page;
		
		switch(action) {
			case "checkout": page = "/checkoutHandler.jsp";
			break;
			case "complete": page = "/orderComplete.jsp";
			break;
			case "cv": page = "/cv.jsp";
			break;
			case "cafev": page = "/cafev.jsp";
			break;
			case "ovt": page = "/ovt.jsp";
			break;
			default: page = "/index.jsp";
		}
		
		if (action.equals("checkout")) {
			for (int i = 0; i < 15; i++) {
				if (request.getParameter("order" + i) != null) {
					
					if (page.indexOf('?') == -1) {
						page += "?";
					} else {
						page += "&";
					}
					
					page += "order" + i + "=";
					String input = request.getParameter("order" + i);
					input = input.replaceAll("/$", "");
					page += input;
				}
			}
		} else if (action.equals("complete")) {
			page += "?email=";
			String email = request.getParameter("email");
			email = email.replaceAll("/$", "");
			page += email;
		}
		
		response.sendRedirect(page);
	}

}
