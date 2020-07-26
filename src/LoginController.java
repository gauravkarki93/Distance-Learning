

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Controller
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		User u = new User();
		u.setId(request.getParameter("Id"));
		u.setPassword(request.getParameter("Password"));
		

		HttpSession sess = request.getSession(true);
		String id = (String) sess.getAttribute("id");
		String pass =(String) sess.getAttribute("pass");
		

		if(id==null && pass ==null)
		{
			 sess.setAttribute("id", u.getId());
			 sess.setAttribute("pass", u.getPassword());
		}	
		
		if(Logics.isValid(u))
		{
			sess.setAttribute("user", u);
			sess.setAttribute("course", u.getCourse());
		
			
			RequestDispatcher rd = null;
			if(u.getType().equalsIgnoreCase("Student"))
			{
			rd = request.getRequestDispatcher("WelcomeStudent.jsp");
			}
			else if(u.getType().equalsIgnoreCase("Faculity"))
			{
			rd = request.getRequestDispatcher("WelcomeFaculity.jsp");
			}
			else if(u.getType().equalsIgnoreCase("Admin"))
			{
			rd = request.getRequestDispatcher("WelcomeAdmin.jsp");
			}
			if(rd!=null)
			{
				rd.forward(request, response);
			}
		}
		else
		{
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("Wrong Username or Password");
			RequestDispatcher rd = request.getRequestDispatcher("login_n_registration.html");
			rd.include(request, response);			
		}
		
	}

}
