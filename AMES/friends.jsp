﻿<ol><%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Friends</title>
<link href="style1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="body_div">
 <%
			String file_data=null;
			String q=null;
			String mail=(String)session.getAttribute("mail");

			
				//String mail=(String)session.getAttribute("id");
				
			%>
  
  <!-- body div -->
  <div class="sidebar_container">
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
									Class.forName("com.mysql.jdbc.Driver");

                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");
									//Connection con = databasecon.getconnection();
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
								session.setAttribute("name",fname);
									out.println(e1.getMessage());
								}
								
								
						%>
    <div class="profpic_container" onclick=" "> <img src="user2.jsp" width="135" height="135" style="border-radius:50%"> </div>
    <!-- profpic ends-->
    
    <div class="menu_container">
      <div class="username"> <%=fname%> <%=lname%> </div>
      <!-- user name-->
      
      <div class="sb"><!--search bar-->
        <form  name="s" action="search2.jsp" >
          <input style="width:300px;text-align:center;height:30px;border-style:none; border-bottom:1px solid #CCC;" type="text" name="v" placeholder="Search Friends" />
        </form>
      </div><!--search bar-->
      <a href="user.jsp"><div class="menu_items"> News Feed </div></a> 
      <a href="friends.jsp"><div class="menu_items"> Friends </div></a> 
      <a href="frd2.jsp"><div class="menu_items"> Friend Request</div></a>
      <a href="myvideo.jsp"><div class="menu_items"> My Videos </div></a>
      <a href="message.jsp"><div class="menu_items"> Messages </div></a>
      <a href="addvideo.jsp"><div class="menu_items"> Post Video </div></a>
      <a href="index.jsp"><div class="menu_items"> Logout </div></a>
      </div><!-- menu container-->
  
  </div>
  <!-- sidebar container ends -->
  
  
  <div class="content_container" >
   
   
   <div class="entry">

<table>

<tr><font color="#CCC" size="6"><b> Friends </b></font></tr>

<br />
<br />
<br />
<%


try {

Class.forName("com.mysql.jdbc.Driver");

Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");

PreparedStatement stmt3 = con3.prepareStatement("select id from signup where mail='"+mail+"' ");

ResultSet rs3= stmt3.executeQuery();

while(rs3.next()) {
 q=rs3.getString(1);
}
}
catch(Exception e3)
{
out.println(e3.getMessage());

}



String s=null,s1=null;

try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");


	PreparedStatement stmt1 = con1.prepareStatement("select recid,recid1 from friends where sendid='"+q+"' ");

ResultSet rs1= stmt1.executeQuery();

while(rs1.next()) {
 s=rs1.getString(1);
  s1=rs1.getString(2);

%>

<tr>

<td> <a href="view.jsp?<%=s%>"> <img class="profpic_container" src="friends1.jsp?<%=s%>" height="135" width="135" style="border-radius:50%;"> </a></td><td><font color="#666666"><b><%=s1%></b></font>
</td></tr>

<tr><td><p>
<a href="view.jsp?<%=s%>"></a>
</p></td></tr>
<tr><td><p>&nbsp;</p></td></tr>
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

						

	
						</div>
   
  </div>
    
    </div>
<!-- body div -->

</body>
</html>
