<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%
session.setAttribute("mail",request.getParameter("mail"));
	session.setAttribute("pass",request.getParameter("pass"));
	
FileInputStream fis;
//String no=request.getParameter("no");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String mail=request.getParameter("mail");
String pass=request.getParameter("pass");
String mno=request.getParameter("mno");
String dob=request.getParameter("dob");
String f=request.getParameter("file");
String city=request.getParameter("city");
String gen=request.getParameter("gen");

//String city=request.getParameter("city");
//String age=request.getParameter("age");
//String f1="\\apache-tomcat-6.0.18";
//String f2="\\webapps";
//String f3="\\video sharing";
String f4="\\images\\";
String z = "D:\\amesp\\"+f4+f;
int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;
File image=new File(z);
PreparedStatement ps = null;

	ResultSet rs = null;

try
{
	Class.forName("com.mysql.jdbc.Driver");	
	Connection		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");
//Connection con = databasecon.getconnection();
ps=con.prepareStatement("insert into signup(fname,lname,mail,pass,mno,dob,photo,gen) values(?,?,?,?,?,?,?,?)");
//ps.setInt(1,bbb);
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,mail);
ps.setString(4,pass);
ps.setString(5,mno);
ps.setString(6,dob);
fis=new FileInputStream(image);
ps.setBinaryStream(7, (InputStream)fis, (int)(image.length()));
//ps.setString(8,city);
ps.setString(8,gen);
//ps.setString(8,city);
//ps.setString(9,age);
//ps.setString(10,marks);

ps.executeUpdate();
response.sendRedirect("success1.jsp?success");



}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
