<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%




			//String file_data=null;
			
				String mail=(String)session.getAttribute("mail");
				//String pass=(String)session.getAttribute("pass");
				String fname=(String)session.getAttribute("fname");
	

//String email=request.getParameter("useremailids");

//String skey=(String)session.getAttribute("skey");
String id=request.getParameter("id");


		 
		   String key=null;


		   try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/framework","root","root");

PreparedStatement ps=con.prepareStatement("select  * from uservideo where id='"+id+"' ");
ResultSet rs=ps.executeQuery();
while(rs.next())
 			{
 		 key=rs.getString(9);
				session.setAttribute("key",key);
				}
				}
				catch(Exception e1)
{
out.println(e1.getMessage());

}

//String email1=(String)session.getAttribute("email");


//String password=(String)session.getAttribute("password");





String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="customerservice404@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="customer@404"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =mail; // out going email id

String from ="customerservice404@gmail.com"; //Email id of the recipient

String subject ="Secret Key";

String messageText ="Your Secret Key is"+key;

boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());

response.sendRedirect("key1.jsp"); // assume it was sent
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();


%>
