<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddFaculity</title>

 <style>
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
   width:1155px;
   margin-left:190;
  margin-top:0px;
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
	 width:955px;
	 height:770px;
   
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
	   height:770px;
	 width:755px;
	 background-color:#FFFFFF;
	  
	   }
	   
	   #reg
	   {
	   
	   float:left; 
	   height:760px;
	 width:745px;
	 margin-left:5px;
	 margin-top:5px;
	 background-color:#F6F6F6;
	
	
	   
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
	
		
		#label_reg
  {
  float:left;
  font-size:25px;
  color:#555;
  margin-left:210px;
  margin-top:20px;
 } 
 
 #l1
	{ 
    float:left;
    margin-left:150px;
    margin-top:24px;
    color:#000000;
    font-size:13px;
    font-family:arial;
    }
  
    #l2,#l3,#l4,#l5,#l6,#l7,#l8,#l9
	{ 
    float:left;
    margin-left:150px;
    margin-top:15px;
    color:#000000;
    font-size:13px;
    font-family:arial;
    }
 
 #l10
	{ 
    float:left;
    margin-left:140px;
    margin-top:15px;
    color:#000000;
    font-size:13px;
    font-family:arial;
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
 #form{
		margin-left:300px;
		margin-right:100px;
		font-family: 'Open Sans',arial;
		font-size: 16px;
		font-weight:bold;
		padding:10px; 
		}
 
 #longfields
{
padding-top:5px;
padding-bottom:5px;
text-align:left;
}
  	#smallfields
{
width:50px;
padding-top:5px;
padding-bottom:5px;
}
 
  #reg_but:hover
		 {
		 background-color:#4367EB;
		 color:#FFFFFF
		 
		  }
	  
  </style>

</head>
<body>

<div id="left">
</div>

  
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




<label id="label_reg">REGISTER HERE</label>

<div id="form">

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/study","root","gaurav123");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from courses");


%>


<form action="RegisterFaculity" method="post">
<br>
<br>
Name
<br>
<input style="padding:5px" type="text" name="Fname" placeholder="First"/>
&nbsp;
&nbsp;

<input style="padding:5px" type="text" name="Lname" placeholder="Last"/>
<br>
<br>
Choose your Username
<br>
<input id="longfields"  size="52px" type="text" name="Id" placeholder=""/>
<br>
<br>
Create a password
<br>
<input  id="longfields" type="password" name="Password" size="52px"/>
<br>
<br>
Birthday
<br>
<select style="padding:5px"  name="Month" size="1">
<option value="1">January</option>
<option value="2">February</option>
<option value="3">March</option>
<option value="4">April</option>
<option value="5">May</option>
<option value="6">June</option>
<option value="7">July</option>
<option value="8">August</option>
<option value="9">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option>
</select>
&nbsp;&nbsp;
<input id="smallfields" type="text" name="Day" placeholder="Day"/>
&nbsp;&nbsp;
<input id="smallfields" type="text" name="Year" placeholder="Year" />
<br>
<br>
Gender
<br>
<select id="longfields" style=" text-align:left" name="Gender" size="1">
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Others">Others</option>
</select>
<br>
<br>
Mobile phone
<br>
<input id="longfields" type="text" name="mobile" placeholder="+91" size="52px"/>
<br>
<br>
Email
<br>
<input id="longfields" type="text" name="Email" placeholder="+91" size="52px"/>
<br>
<br>
Course
<br>
<select id="longfields"  style=" text-align:left" name="Course" size="1">
<option value="Btech">B.tech</option>
<option value="MBA">M.B.A</option>
<option value="BA">B.A</option>
<%
while(rs.next())
{
%>
<option value=<%=rs.getString(1)%>><%=rs.getString(1)%></option>
</select>
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


%>
<br>
<br>
<input id="but2" name="Create" type="submit"  value="Register"/>
</form>

</div>



</div>

<div id="right">
</div>


<div id="bottom">
</div>

</body>
</html>