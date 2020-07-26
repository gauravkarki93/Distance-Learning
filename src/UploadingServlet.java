

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class UploadingServlet
 */
public class UploadingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadingServlet() {
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
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        HttpSession sess = request.getSession(true);
		String course = (String) sess.getAttribute("course");
        
        
		MultipartRequest m = new MultipartRequest(request, "D:/ProjectDb");  
		out.print("successfully uploaded");  
	
		
			  Enumeration files = m.getFileNames();
    
              String name = (String)files.nextElement();
              String filename = m.getFilesystemName(name);
              String type = m.getContentType(name);
              out.println("<BR>name: " + name);
              out.println("<BR>filename: " + filename);
              out.println("<BR>type: " + type); 
              
              
              try
              {
            	Class.forName("com.mysql.jdbc.Driver");
          		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/study","root","gaurav123");
          		PreparedStatement ps = con.prepareStatement("insert into filesystem values(?,?,?)");
          		ps.setString(1, filename);
          		ps.setString(2, type);
          		ps.setString(3, course);
          		ps.executeUpdate();
              }
              catch(Exception e)
              {
            	  e.printStackTrace();
              }
              
        
	}

}
