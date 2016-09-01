<ol>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Friends</title>
<link href="style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

function validation()

{
var b=document.a.file.value;
if(b=="")
{
alert("Enter File Name");
document.a.file.focus();
return false;
}

var v=document.a.video.value;
if(v=="")
{
alert("Choose file");
document.a.video.focus();
return false;
}
}
</script>
</head>

<body>
<div id="logo">
  <%
				String n=(String)session.getAttribute("n");
				String p=(String)session.getAttribute("p");
			%>
</div>
<div class="sidebar_container">
  <div class="profpic_container" onclick=" "> <img src="user2.jsp" width="135" height="135" style="border-radius:50%"> </div>
  <!-- profpic ends-->
  
  <div class="menu_container"> <a href="admin.jsp">
    <div class="menu_items"> Upload Videos </div>
    </a> <a href="userdetail.jsp">
    <div class="menu_items"> User Details </div>
    </a> <a href="newvideo.jsp">
    <div class="menu_items"> New Video </div>
    </a> <a href="index.jsp">
    <div class="menu_items"> Logout </div>
    </a> </div>
  <!-- menu container--> 
  
</div>
<!-- sidebar container ends -->

<div class="content_container" >
  <div class="entry">
    <br />
        <br />
            <br />
            <br />
            <table cellpadding="6" align="center" style="border:1px black solid">
      <tr align="center" bgcolor="#FFFFFF">
        <td align="center"><p><strong><font color="#000000">User Name</font></strong></p></td>
        <td align="center"><p><strong><font color="#000000">Mail-Id</font></strong></p></td>
        <td align="center"><p><strong><font color="#000000">Mobile Number</font></strong></p></td>
        <td align="center"><p><strong><font color="#000000">Gender</font></strong></p></td>
      </tr>
      <%
							String fname=null;
							String mail=null;
							String mno=null;
							String gen=null;
							//String city=null;
							PreparedStatement ps = null;
							ResultSet rs = null;
							try
								{
									Connection con = databasecon.getconnection();
									ps=con.prepareStatement("select * from signup");
									rs=ps.executeQuery();
									while(rs.next())
									{
									fname=rs.getString(2);
									mail=rs.getString(4);
									mno=rs.getString(6);
									gen=rs.getString(9);
									
						%>
      <tr align="center">
        <td align="center"><p><font color="#CCCCCC"><%=fname%></font></p></td>
        <td align="center"><p><font color="#00FFFF"><%=mail%></font></p></td>
        <td align="center"><p><font color="#FFFF00"><%=mno%></font></p></td>
        <td align="center"><p><font color="#CC66CC"><%=gen%></font></p></td>
      </tr>
      <%
			 }
			 %>
    </table>
    <%
		}
		catch(Exception e1)
{
out.println(e1.getMessage());
}

		%>
  </div>
</div>
</div>
</div>
<!-- body div -->

</body>
</html>