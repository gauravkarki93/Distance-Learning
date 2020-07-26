

import java.io.IOException;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import sun.rmi.transport.Transport;

/**
 * Servlet implementation class EmailFeedback
 */
public class EmailFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailFeedback() {
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
		HttpSession sess = request.getSession(true);
		String uid = (String)sess.getAttribute("id");
		String EmailId = "gallikarki93@gmail.com";			 //Write the receivers's mail id here

		
		 String Username = "gallikarki93@gmail.com";				 //sender's  id
		 String Password =	"jinglebell";                  //password

		String message4 = request.getParameter("exp1");//message
		String message2 = request.getParameter("exp2");
		String message3 = request.getParameter("exp3");
		
		String message1= message4 + "\n" + message2 + "\n"+ message3;
		
		String subject = "Feedback by "+uid;  			  //subject

		Properties p = new Properties();
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587");

		javax.mail.Session s = javax.mail.Session.getInstance
				(p,
				new javax.mail.Authenticator() {
					protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
						return new javax.mail.PasswordAuthentication(Username,
								Password);

					}
				});

		try {

			//Message message = new MimeMessage(s);
			Message message = new MimeMessage(s);
			
			message.setFrom(new InternetAddress(
					Username));     //again sender's id
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(EmailId));

			message.setSubject(subject);
			message.setText(message1);

			javax.mail.Transport.send(message);
			System.out.println("Done");
			response.sendRedirect("feedback_thanku.html");
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
