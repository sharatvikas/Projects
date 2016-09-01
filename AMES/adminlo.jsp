<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>
	<form>
	<% 
           session.setAttribute("n",request.getParameter("n"));
	session.setAttribute("p",request.getParameter("p"));
	
	String n=(String)session.getAttribute("n");	
String p=(String)session.getAttribute("p");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	if(n.equals("admin")&&(p.equals("admin")))
	{
	response.sendRedirect("admin.jsp");
	}
	else
	{	
	  out.println("Oop's! you are not Authenticated Person");
	}
	
	
	
            %>
             </form>
       </body> 	
