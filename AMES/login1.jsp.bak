<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
	<% 
        //String mail=request.getParameter("mail");
//String pass=request.getParameter("pass");
		   session.setAttribute("mail",request.getParameter("mail"));
	session.setAttribute("pass",request.getParameter("pass"));
	
	String mail=(String)session.getAttribute("mail");	
String pass=(String)session.getAttribute("pass");
String s=null;		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
		String fname=null;
	String sql="select * from signup where mail='"+mail+"' AND pass='"+pass+"'";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");
	  // con = databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		 
		 
		 fname=rs.getString("id");
		 s=rs.getString("fname");
		 
		 
		 session.setAttribute("fname",fname);
		 session.setAttribute("s",s);
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
        