<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students Details</title>
<style type="text/css">
  #top
  {
  
  height:150px;
  width:955px;
  margin-left:190px;
  margin-top:-7px;
  background-color:#FFFFFF;
  background-repeat:no-repeat;
  background-position:20px;
  background-size:145px;
   }
   #logo
   {
   
   height:200x;
   width:200px;
   margin-top:-125px;
   margin-left:700px;
    }
   
   #bottom
   {float:left;
    height:50px;
background-color:#FFFFFF;
   width:1255px;
   margin-left:190;
  margin-top:-350px;
  background-image:url('images/pencil.png');
  background-repeat:no-repeat;
  background-position:250px;
  background-size:800px;
   
    }
   
   #nav
   {
   height:37px;
   width:955px;
   background-color:#104070;
   margin-left:190px;
   margin-top:2px;
    }
	
	
   #left
   
   {float:left;
    height:750px;
     width:197px;
     margin-left:-8px;
     margin-top:-7px;
	 background-color:#FFFFFF;
   background-image:url('images/boy2.jpg');
     background-repeat:no-repeat;
     background-size:330px;
	 background-position:-65px 60px ;
	 
	}
	#right
	{
     float:right;
     height:750px;
     width:197px;
     margin-right:-8px;
     margin-top:-190px;
	 background-color:#FFFFFF;
	 background-image:url('images/girl.jpg');
     background-repeat:no-repeat;
     background-size:250px;
	 background-position:-10px 40px;
	 
     
	 }
	 
	 #middle
	 
	 {
	 float:left;
	 background-color:#FFFFFF;
	 width:955px;
	 height:970px;
   
	 }
	 
	 #m1
	 {
	 float:left;
	 height:420px;
	 width:200px;
	 background-color:#F6F6F6;
	 
	 
	 
	  }
	  #m2
	  {float:left; 
	   height:420px;
	 width:755px;
	 background-color:#FFFFFF;
	  
	   }
	  
	  #query_reply
	  {
	  float:left; 
	   height:410px;
	 width:745px;
	 margin-left:5px;
	 margin-top:5px;
	 background-color:#FFFFFF;
     background-repeat:no-repeat;
     background-size:300px;
	 background-position:150px 80px;
	 
	  } 
	 
	  
	  #m1a1:link
	 {
	 float:left;
	 margin-left:0px;
	 font-size:18px;
	 font-family:serif;
	 text-decoration:none;
	 display:block;
	 width:200px;
	 height:30px;
	 text-align:center;
	 padding-top:7px;
	 background-color:#FF5649;
	  }
	
     #m1a2,#m1a3,#m1a4,#m1a5,#m1a6:link
	 {
	 float:left;
	 margin-left:0px;
	 margin-top:2px;
	 font-size:18px;
	 font-family:serif;
	 text-decoration:none;
	 display:block;
	 width:200px;
	 height:30px;
	 text-align:center;
	 padding-top:7px;
	 background-color:#FF5649;
	  }

   
	  #m1a1:hover
	 {
	 background-color:#D40E00;
     }	  
	   #m1a2:hover
	 {
	 background-color:#D40E00;
     }	  
	   #m1a3:hover
	 {
	 background-color:#D40E00;
     }	  
	   #m1a4:hover
	 {
	 background-color:#D40E00;
     }	  
	   #m1a5:hover
	 {
	 background-color:#D40E00;
     }	  
	   #m1a6:hover
	 {
	 background-color:#D40E00;
     }	  
	  
	  
	
	 #a1:hover
	 {
	 background-color:#FF8735;
     }
	  #a2:hover
	 {
	 background-color:#FF8735;
     }
	  #a3:hover
	 {
	 background-color:#FF8735;
     }
	  #a4:hover
	 {
	 background-color:#FF8735;
     }
	  #a5:hover
	 {
	 background-color:#FF8735;
     }
	 
     #a1:link
	 {
	 float:left;
	 margin-left:200px;
	 font-size:18px;
	 font-family:serif;
	 text-decoration:none;
	 display:block;
	 width:100px;
	 height:30px;
	 text-align:center;
	 padding-top:7px;
	  }
	
     #a2,#a3,#a4,#a5:link
	 {
	 float:left;
	 margin-left:0px;
	 font-size:18px;
	 font-family:serif;
	 text-decoration:none;
	 display:block;
	 width:100px;
	 height:30px;
	 text-align:center;
	 
	 padding-top:7px;
	  }
	  
   #p1
   { 
   letter-spacing:-3px;
   font-size:40px;
   margin-left:180px;
   padding-top:36px;
   margin-top:0px;
   color:#003162;
   
    }
	#p2
{
   
	font-size:20px;
   margin-top:-45px;
   margin-left:180px;
   color:#FF8735;

	 }
	 #label_query_1
   {
 
  float:left;
  font-size:25px;
  color:#000000;
  margin-left:70px;
  margin-top:40px;
 }
 
 
  #label_query_2
   {
 
  float:left;
  font-size:25px;
  color:#000000;
  margin-left:70px;
  margin-top:5px;
 } 
  
 	 #label_query_3
   {
 
  float:left;
  font-size:25px;
  color:#000000;
  margin-left:70px;
  margin-top:-25px;
 }
 
  #label_query_4
   {
  float:left; 
  font-size:18px;
  color:#000000;
  margin-left:72px;
  margin-top:-10px;
 }
 
 
	#helpline 
  {float:left;
  font-size:20px;
  color:#1D1D1D;
  margin-left:5px;
  margin-top:22px;
 }  
 
 #img_phn
 {float:left;
 margin-left:3px;
 margin-top:20px;
 height:22px;
 width:22px;
 
 
 
  }
 
 #contact_num 
  {float:left;
  font-size:15px;
  color:#1D1D1D;
  margin-left:60px;
  margin-top:5px;
 }  
 
 
 #email_label 
  {float:left;
  font-size:20px;
  color:#1D1D1D;
  margin-left:5px;
  margin-top:20px;
  }
  
  #img_email
  {
  float:left;
 margin-left:60px;
 margin-top:20px;
 height:22px;
 width:22px;
  
  
   }
  #email 
  {float:left;
  font-size:15px;
  color:#1D1D1D;
  margin-left:25px;
  margin-top:5px;
 }  
 
 #func
 {
 padding:5px;
 background-color:#3399FF;
 text-decoration:none;
 color:#FFFFFF;
 }
 th
 {
 padding:5px;
 }
 
 #fac
 {
  color:#FFFFFF;
 text-decoration:none;
 }


</style>

</head>
<body>
 
<div id="top">
<p id="p1"><b>Distance Learning Org.</b></p>
<p id="p2"><b>Give your child the tools to succeed!</b></p>
<img id="logo" src="images/top.png" />
</div>


<div id="nav">
<a id="a1"  href="front_page.html" style="color:#FFFFFF">Home</a>
<a id="a2"  href="about.html" style="color:#FFFFFF">About</a>
<a id="a3"  href="courses.html" style="color:#FFFFFF">Courses</a>
<a id="a4"  href="Registration.jsp" style="color:#FFFFFF">Registration</a>
<a id="a5"  href="contact_us.html" style="color:#FFFFFF">Contact us</a>
</div>


<div id="middle">


<div id="m1">
<a id="m1a1"  href="why_this.html" style="color:#FFFFFF">Why This?</a>
<a id="m1a2"  href="courses.html" style="color:#FFFFFF">Programs Offered</a>
<a id="m1a3"  href="regulations.html" style="color:#FFFFFF">Regulations</a>
<a id="m1a4"  href="login_n_registration.html" style="color:#FFFFFF">Apply Online</a>
<a id="m1a5"  href="feedback.html" style="color:#FFFFFF">Feedback</a>
<a id="m1a6"  href="contact_us.html" style="color:#FFFFFF">Contact us</a>

<img id="img_phn" src="images/phone.png" />

<label id="helpline">Admission Helpline</label>
<label id="contact_num">+919716437865; +919971734266; +919990844482.</label>

<img id="img_email" src="images/email.png" />


<label id="email_label">Email</label>
<label id="email">gauravkarki93@gmail.com; kapil.shivinder@gmail.com</label>

</div>



<div id="m2">


<div style="margin-left:200px;margin-top:50px">



<table>
<tr>
<td id="func">
<a id="fac" href="Profile.jsp" >Profile</a>
</td>
<td id="func">
<a id="fac" href="StudentDetails.jsp">Show Student Details</a>
</td>
<td id="func">
<a id="fac" href="CPfaculity.jsp">Change Password</a>
</td>
<td id="func">
<a id="fac" href="Uploader.jsp">Upload a file</a>
</td>
<td id="func">
<a id="fac" href="ViewQuestion.jsp">Questions</a>
</td>
<td id="func">
<a id="fac" href="LogoutServlet">Logout</a>
</td>
</tr>
</table>



<%
String cou = (String)session.getAttribute("course");
String s = "Student";
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/study","root","gaurav123");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where course='"+cou+"' and type='"+s+"'");
%>
<div style="margin-top:50px">
<table cellpadding="15" border="1" style="background-color: #ffffcc;">
<tr>
<thead>
<th>
Id
</th>
<th>
Name
</th>
<th>
Email-Id
</th>
<th>
DOB
</th>
<th>
Mobile
</th>
<th>
Course
</th>
</thead>
</tr>
<tbody>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(8)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(7)%></TD>
</TR>

<%

}
con.close();
st.close();
rs.close();
}
catch(Exception e)
{
	out.print("Unable to connect");
}
finally
{
	out.print("Successfully connected");
}

%>
</tbody>
</table>
</div>


 </div>

</div>

</div>

</body>
</html>