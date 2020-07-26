
import java.sql.*;


public class Logics {

	public static boolean isValid(User u)
	{	boolean b = false;
		String n,pi;
		n = u.getId();
		pi= u.getPassword();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/study","root","gaurav123");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from users where id='"+n+"'and password='"+pi+"'");
			
			if(rs.next())
			{
				u.setEmailId(rs.getString(2));
				u.setBirthday(rs.getString(4));
				u.setGender(rs.getString(5));
				u.setMobile(rs.getString(6));
				u.setCourse(rs.getString(7));
				u.setName(rs.getString(8));
				u.setType(rs.getString(9));
				b=true;
			}

			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
	
public static void registerUser(User u)
{
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/study","root","gaurav123");
		PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, u.getId());
		ps.setString(2, u.getEmailId());
		ps.setString(3, u.getPassword());
		ps.setString(4, u.getBirthday());
		ps.setString(5, u.getGender());
		ps.setString(6, u.getMobile());
		ps.setString(7, u.getCourse());
		ps.setString(8, u.getName());
		ps.setString(9, u.getType());
		
		ps.executeUpdate();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}




}
