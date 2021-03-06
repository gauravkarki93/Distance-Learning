

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
    
    String name;
    name = request.getParameter("Fname")+" "+request.getParameter("Lname");
    u.setName(name);
	
    u.setPassword(request.getParameter("Password"));
    u.setGender(request.getParameter("Gender"));
    u.setEmailId(request.getParameter("Email"));
    u.setCourse(request.getParameter("Course"));
    u.setType("Student");
    u.setMobile(request.getParameter("mobile"));
  
    String dob;
    dob=request.getParameter("Month")+" "+request.getParameter("Day")+" "+request.getParameter("Year");
    u.setBirthday(dob);
    
    u.setType("Student");
    
    Logics.registerUser(u);
    
    response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.print("Registration successful");
	RequestDispatcher rd = request.getRequestDispatcher("login_n_registration.html");
	rd.include(request, response);		
	}

}
