<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>


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
				String fname=(String)session.getAttribute("fname");
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
						<p><font color="#FF0000" face="Times New Roman, Times, serif" size="+2">Updade Status</font>&nbsp;&nbsp;&nbsp;
						<a href="addvideo.jsp"><font color="#006600" face="Times New Roman, Times, serif" size="+2">Add Videos</font></a> </p>
						
						<table bgcolor="#666666">
						<form name="s1" action="post.jsp" onSubmit="return validation()">
						<tr><td></td><td></td><td><textarea rows="4" cols="40" placeholder="What's on your mind?" name="msg"></textarea></td></tr>
						<tr><td bgcolor="#CCCCCC"></td><td bgcolor="#CCCCCC"></td>
						<td>
						<input name="submit" type="submit" value="  post   "></td>
						</tr></form></table>
	
						</div>
					</div>
					
					<div class="post">
						<h2 class="title">
						
								</h2>
						<div class="entry">
						<%
						
						String sw=null;
						try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");


	PreparedStatement stmt1 = con1.prepareStatement("select recid from friends where sendid='"+fname+"' ");

ResultSet rs1= stmt1.executeQuery();

if(rs1.next()) {
 sw=rs1.getString(1);


%>
<table>
				
						
						<%PreparedStatement ps1 = null;
							ResultSet rs2 = null;
							String key=(String)session.getAttribute("key");
							String video=null;
							String id=null;
							String msg=null;
							String sdate=null;
							String skey=null;
							String q="accept";
							try
								{
									Connection con2 = databasecon.getconnection();
									ps1=con2.prepareStatement("select * from uservideo  where skey='"+key+"'");
									rs2=ps1.executeQuery();
									
									
									while(rs2.next())
									{
									
									fname=rs2.getString(3);
									video=rs2.getString(5);
									sdate=rs2.getString(6);
									msg=rs2.getString(4);
									skey=rs2.getString(9);
									session.setAttribute( "skey", skey );
									id=rs2.getString(1);									
									session.setAttribute( "id", id );
									
									
									%>
									<tr>
                  <td width="100"><img src="friends1.jsp?<%=sw%>" height="55" width="55"></td><td>&nbsp;&nbsp;<font color="#FF0000" size="5"><strong><%=fname%></strong></font> <font color="#FF00FF">Shared 
                    A VIdeo</font></td>
                </tr>
									
									<tr>
									
                  <td width="100"><font color="#9900FF"><%=msg%></font></td>							
									<td>
									<video width="400" height="320" controls >
  <source src="documents/<%=video%>" type="video/ogg">
  <source src="documents/<%=video%>" type="video/mp4">
  <source src="documents/<%=video%>" type="video/webm">
  <object data="documents/<%=video%>" width="320" height="240">
    <embed width="320" height="240" src="documents/<%=video%>">
  </object>
</video></td> 



                
			    </tr>
<%
									}
									
									
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								%>
								
								<tr>
								
								</tr>
								
								
						<%


 }
 
 }
 catch(Exception e)
 {
 }
PreparedStatement ps3 = null;
							ResultSet rs3 = null;
							//String video=null;
							String msg1=null;
							//String sdate=null;
							//String q="accept";
							try
								{
									Connection con3 = databasecon.getconnection();
									ps3=con3.prepareStatement("select fname,msg1,id1 from message where id1='"+sw+"'");
									rs3=ps3.executeQuery();
									
									
									while(rs3.next())
									{
									
									fname=rs3.getString(1);
									msg1=rs3.getString(2);
									//sdate=rs3.getString(3);
									//msg=rs3.getString(4);
									
									
									%>
									
									
									
					<%
									}
									
								}
								catch(Exception e1)
								{
									out.println(e1.getMessage());
								}
								%>
								
								<tr>
								
								</tr>
								
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
							String fname1=null;
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
									fname1=rs.getString(2);
									lname=rs.getString(3);
									
									}
								}
								catch(Exception e1)
								{
								session.setAttribute("name",fname);
									out.println(e1.getMessage());
								}
								
								
						%>
						<li><img src="user2.jsp" width="135" height="155"></br>
						
						</li>
						<li>
							<h2><font color="#660000" size="3"><i><%=fname1%> <%=lname%></i></font></h2>
							<form name="s" action="search2.jsp">
 <table><tr><td><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>
 Search</b></i></font>
 <input type="text" name="v" size="14" placeholder="Search friends"></td></tr></table></form>
							
              
						</li>
						<li>
							
							<ul>
								<li>News Feed</li>
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
