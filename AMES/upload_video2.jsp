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
		
    <div id="header"> 
	</br>
      <h3><font color="#FFFF00" size="+3"><span><font color="#00FFFF">AMES-Cloud:</font></span> 
        A Framework of Adaptive Mobile Video Streaming</font></h3> 
      <h2 align="right"><font color="#FFFF00">and Efficient 
        Social Video Sharing in the Clouds&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></h2>
			<div id="logo">
				<%
				String n=(String)session.getAttribute("n");
				String p=(String)session.getAttribute("p");
			%>
				
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<h2 align="center"><font color="#FF00FF">Welcome Administrator</font></h2>
   <%
  String file=request.getParameter("file");
  session.setAttribute("filename",file);
  %>
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post">
						<h2 class="title">File Uploaded Successfully</h2>
						
            <div class="entry"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin.jsp"><font size="+2">Back</font></a> 
            </div>
					</div>
					<div class="post">
						<h2 class="title"><a href="#"></a></h2>
						<div class="entry">
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
						<li>
							<h2 align="center">Administrator</h2>
              <div align="center">
                <ul>
                  <li>Upload Video</li>
                  <li><a href="userdetail.jsp">User Details</a></li>
                  <li><a href="newvideo.jsp">New Videos</a></li>
                  <li><a href="index.jsp">Logout</a></li>
                  <li><a href="#"></a></li>
                  <li><a href="#"></a></li>
                </ul>
              </div>
						</li>
						<li>
							<h2></h2>
							
						</li>
						<li>
							<h2></h2>
							
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
