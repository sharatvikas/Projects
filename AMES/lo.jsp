<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
	<% 
        
	
	String mail=(String)session.getAttribute("mail");
	String pass=(String)session.getAttribute("pass");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
		
	String sql="select * from signup where mail='"+mail+"' AND pass='"+pass+"'";
	try
	{
	   con = databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		session.setAttribute("mail",mail);
		 
	      	 response.sendRedirect("user.jsp");       		    
	    }
	  out.println("Oop's! you are not Authenticated Person");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }


	
	
            %>
        