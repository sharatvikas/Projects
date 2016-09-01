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
<%
  String file=request.getParameter("file");
  session.setAttribute("filename",file);
  %>

<div class="content_container" >
  <div class="entry">
  
<form name="form" action="upload_video1.jsp" method=post  enctype="multipart/form-data" onSubmit="return validation()" >
  <table width="460" height="200">
    <tr>
      <td></td>
      <td bgcolor="#CCFFFF"><font color="#666666" face="Times New Roman, Times, serif" size="4"> <i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Name</b></i></font></td>
      <td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text"  value="<%=file%>"></td>
    </tr>
    <tr>
      <td></td>
      <td bgcolor="#CCFFFF"><font color="#666666" face="Times New Roman, Times, erif" size="4"> <i><b>Choose File</b></i></font></td>
      <td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="file" name="file"></td>
    </tr>
    <tr>
      <td></td>
      <td bgcolor="#CCFFFF"></td>
      <td bgcolor="#CCFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" class="button" value="Upload">
        <input type="reset" class="button" value="Clear"></td>
    </tr>
  </table>
</form>

  </div>
</div>
<!-- body div -->

</body>
</html>