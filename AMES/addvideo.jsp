<ol><%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
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
    <div style="color:white;font-size:24px;margin-left:7px;margin-top:22px;"> Update Status: </div>
    <br />
    <div style="width:800px;;-webkit-box-shadow: 10px 10px 0px 0px rgba(59,59,59,1);
	-moz-box-shadow: 10px 10px 0px 0px rgba(59,59,59,1);
	box-shadow: 10px 10px 0px 0px rgba(59,59,59,1);">
    <form name="s1" action="post.jsp" onSubmit="return validation()" >
      <textarea rows="4" cols="40" class="status_box" placeholder="What's on your mind?" name="msg" style=""></textarea>
      <input type="submit" class="sub_but"  />
    </div>
    </form>
    </div>
    
    </div>
<!-- body div -->

</body>
</html>
</ol>