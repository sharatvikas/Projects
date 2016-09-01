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
  <div class="profpic_container" onclick=" "> <img src="asss/admin1.png" width="135" height="135" style="border-radius:50%"> </div>
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
    <table cellspacing="20">
      <br />
      <br />
      <br />
      <br />
      <tr>
        <%PreparedStatement ps1 = null;
							ResultSet rs1 = null;
							String video=null;
							String fname=null;
							String sdate=null;
							String id=null;
							String q="newvideo";
							try
								{
									Connection con1 = databasecon.getconnection();
									ps1=con1.prepareStatement("select id,fname,video,sdate from uservideo  where state='"+q+"'");
									rs1=ps1.executeQuery();
									
									
									while(rs1.next())
									{
									id=rs1.getString(1);
									fname=rs1.getString(2);
									video=rs1.getString(3);
									sdate=rs1.getString(4);
									
									
									%>
        <td><video width="400" height="320" controls >
            <source src="documents/<%=video%>" type="video/ogg">
            <source src="documents/<%=video%>" type="video/mp4">
            <source src="documents/<%=video%>" type="video/webm">
            <object data="documents/<%=video%>" width="320" height="240">
              <embed width="320" height="240" src="documents/<%=video%>">
            </object>
          </video></td>
        <td><p>
        <font color="#FFF" size="5">&nbsp;&nbsp;&nbsp;Video Uploaded By</font>
        <font color="#FFF" size="6"> <b>&nbsp;&nbsp; <%=fname%> </b></font>
        </p>
        <p>&nbsp;&nbsp;&nbsp;<font color="#FFF">On <%=sdate%></font></p>
        
        <p>&nbsp;&nbsp;<a href="accept.jsp?<%=id%>">
        <img src="asss/tick.png" class="profpic_container" style="border-radius:50%; height:45px; width:45px;" />
            </a>
            
            &nbsp;&nbsp; <a href="reject.jsp?<%=id%>">
        <img src="asss/cross.png" class="profpic_container" style="border-radius:50%; height:45px; width:45px;" />
        </a>
        </p>
        </td>
      </tr>
      <%
									}
									if(fname!=null)
									{
									}
									else
									{
									out.print("<p style=font-size:30; color:#CCC;> No New Videos To Be Uploaded </p>");
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
</div>
<!-- body div -->

</body>
</html>