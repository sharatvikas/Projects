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
    <table width="460" height="169"  style="border:1px grey solid">
    <br />
    <br />
    <br />
    <br />
    
      <form name="a" action="admin1.jsp" onSubmit="return validation()">
        <tr>
          <td align="center">
          <div align="right"><font color="#FF0080" face="Times New Roman, Times, serif" size="5">
          <i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Name</b></i></font>
          </div></td>
          <td align="center"><font color="#CCCCCC">
            <input type="text" name="file">
            </font></td>
        </tr>
        <tr>
          <td height="73"></td>
          <td align="center">&nbsp;&nbsp;
            <input type="submit" style="font-face: 'Comic Sans MS'; font-size:21px; color:#C3C; background-color:#FFF; border:3pt groove #C00;" value="Submit">
            &nbsp;&nbsp;
            <input type="reset" style="font-face: 'Comic Sans MS'; font-size:21px; color:#C3C; background-color:#FFF; border: 3pt groove #C00" value="Clear"></td>
        </tr>
      </form>
    </table>
  </div>
</div>
</div>
<!-- body div -->

</body>
</html>