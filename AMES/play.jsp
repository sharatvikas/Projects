<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

 <%
  //String a=(String)session.getAttribute("userid");
//String id=request.getParameter("key");

PreparedStatement ps = null;
	ResultSet rs = null;
		
String file=null;
	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("select file from video ");
		rs = ps.executeQuery();
  if(rs.next())
		{
		file=rs.getString(1);
		session.setAttribute("file",file);		
		//response.sendRedirect("play1.jsp");
		}
		else
		{
	response.sendRedirect("click4.jsp");
		}
		
		}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
