﻿<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>AMES-Cloud: A Framework of Adaptive Mobile Video Streaming and Efficient Social Video Sharing in the Clouds</title>
<link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
			<%
			String file_data=null;
			
				String mail=(String)session.getAttribute("mail");
				String pass=(String)session.getAttribute("pass");
			%>
		
    <div id="header"> 
	</br>
      <h3><font color="#FFFF00" size="+3"><span><font color="#00FFFF">AMES-Cloud:</font></span> 
        A Framework of Adaptive Mobile Video Streaming</font></h3> 
      <h2 align="right"><font color="#FFFF00">and Efficient 
        Social Video Sharing in the Clouds&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></h2>
			<div id="logo">
				
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
	
				
    
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post"><h3></h3>
						<h2 class="title"></h2>
						<div class="entry">
						
						
						
	
						</div>
					</div>
					
					<div class="post">
						<h2 class="title">
						</h2>
						<div class="entry">
						<table>
						<tr>
                  <td><font color="#FF00FF">Your Search for :</font></td>
                </tr>
						<%
						String z=request.getParameter("z");
						session.setAttribute("z",request.getParameter("z"));
						

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");

PreparedStatement stmt = con.prepareStatement("select fname,id from signup where fname like '%"+z+"%' ");

ResultSet rs = stmt.executeQuery();

while(rs.next()) {
String name=rs.getString(1);
String name1=rs.getString(2);
%>
<tr><td><p><font color="#666666" size="3"><b>Profile Photo :</b></font></p></td><td><img src="search.jsp?<%=name%>" height="125" width="125"></td></tr>
<tr><td><p><font color="#00CC66"><b>Name:</b></font></p></td><td><b><h2><%=name%></h2></b></td></tr>
<tr><td></td><td><p><a href="acc2.jsp?<%=name1%>"><font color="#0066CC"><b>Send Friend Request</b></font></a></p></td></tr>
<tr><td></td><td><p><a href="frd7.jsp?<%=name1%>"><font color="#0066CC"><b>View Details</b></font></a></p></td></tr>
<%
}
%>


<%
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
						
								</table>
							<p></p>
						</div>
					</div>
					<div class="post">
						<h2 class="title"><a href="#"></a></h2>
						<div class="entry">
							<p></p>
						</div>
					</div>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<%
							String fname=null;
							String lname=null;
							//String mno=null;
							//String gen=null;
							//String city=null;
							PreparedStatement ps = null;
							ResultSet rs = null;
							try
								{
									Connection con = databasecon.getconnection();
									ps=con.prepareStatement("select * from signup where mail='"+mail+"'");
									rs=ps.executeQuery();
									while(rs.next())
									{
									fname=rs.getString(2);
									lname=rs.getString(3);
									
									}
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								
								
						%>
						<li><img src="user2.jsp" width="135" height="155"></br>
						
						</li>
						<li>
							<h2><font color="#660000" size="3"><i><%=fname%> <%=lname%></i></font></h2>
							<form name="s" action="search2.jsp">
 <table><tr><td><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>
 Search</b></i></font>
 <input type="text" name="v" size="14" placeholder="Search friends"></td></tr></table></form>
							
              
						</li>
						<li>
							
							<ul>
								
								<li><a href="user.jsp">News Feed</a></li>
								<li><a href="friends.jsp">Friends</a></li>
								<li><a href="frd2.jsp">Friend Request</a></li>
								<li><a href="myvideo.jsp">My Videos</a></li>
								<li><a href="message.jsp">Messages</a></li>
								<li><a href="index.jsp">Logout</a></li>
							</ul>
						</li>
						<li>
							<h2></h2>
							
						</li>
					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p></p>
</div>
<!-- end #footer -->
</body>
</html>
