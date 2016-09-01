<ol>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AMES</title>
<link href="style1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="body_div">
  <%
			String file_data=null;
			
				String mail=(String)session.getAttribute("mail");
				String pass=(String)session.getAttribute("pass");
				String fname=(String)session.getAttribute("fname");
			%>
  
  <!-- body div -->
  <div class="sidebar_container">
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
									Class.forName("com.mysql.jdbc.Driver");

                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");
									//Connection con = databasecon.getconnection();
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
    <div class="profpic_container" onclick=" "> <img src="user2.jsp" width="135" height="135" style="border-radius:50%"> </div>
    <!-- profpic ends-->
    
    <div class="menu_container">
      <div class="username"> <%=fname1%> <%=lname%> </div>
      <!-- user name-->
      
      <div class="sb"><!--search bar-->
        <form  name="s" action="search2.jsp" >
          <input style="width:300px;text-align:center;height:30px;border-style:none; border-bottom:1px solid #CCC;" type="text" name="v" placeholder="Search Friends" />
        </form>
      </div>
      <!--search bar--> 
      <a href="user.jsp">
      <div class="menu_items"> News Feed </div>
      </a> <a href="friends.jsp">
      <div class="menu_items"> Friends </div>
      </a> <a href="frd2.jsp">
      <div class="menu_items"> Friend Request</div>
      </a> <a href="myvideo.jsp">
      <div class="menu_items"> My Videos </div>
      </a> <a href="message.jsp">
      <div class="menu_items"> Messages </div>
      </a> <a href="addvideo.jsp">
      <div class="menu_items"> Post Video </div>
      </a> <a href="index.jsp">
      <div class="menu_items"> Logout </div>
      </a> </div>
    <!-- menu container--> 
    
  </div>
  <!-- sidebar container ends -->
  
  <div class="content_container" >
    <table>
      <%PreparedStatement ps1 = null;
							ResultSet rs1 = null;
							String video=null;
							String msg=null;
							String sdate=null;
							String q="accept";
							try
								{
									Connection con1 = databasecon.getconnection();
									ps1=con1.prepareStatement("select fname,video,sdate,msg from uservideo  where status='"+q+"' AND id1='"+fname+"'");
									rs1=ps1.executeQuery();
									
									
									while(rs1.next())
									{
									
									fname=rs1.getString(1);
									video=rs1.getString(2);
									sdate=rs1.getString(3);
									msg=rs1.getString(4);
									
									
									%>
      <tr>
        <td>&nbsp;&nbsp;<font color="#FFF" size="7"> <i> <%=fname%> </i> </font> <font color="#FFF" size="5">:  &nbsp; " <%=msg%> "</font></td>
      </tr>
      <tr>
        <td><video width="800" height="530" &nbsp; &nbsp; &nbsp; &nbsp; controls>
          <source src="documents/<%=video%>" type="video/ogg">
          <source src="documents/<%=video%>" type="video/mp4">
          <source src="documents/<%=video%>" type="video/webm">
          <object data="documents/<%=video%>" width="800" height="800">
            <embed src="documents/<%=video%>" width="800" height="800"> </embed>
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
      <tr> </tr>
    </table>
  </div>
  <!-- end #content --> 
</div>
<!-- body div -->

</body>
</html>
</ol>