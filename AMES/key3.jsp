<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
String mail=(String)session.getAttribute("mail");
				//String pass=(String)session.getAttribute("pass");
				String fname=(String)session.getAttribute("fname");
				String skey=(String)session.getAttribute("skey");


String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="chennaisunday.cs0143@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="sushkrish"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =mail; // out going email id

String from ="customerservice404@gmail.com"; //Email id of the recipient
String subject="Secret Key";
//String subject ="welcome";
String messageText ="Your Secret Key is:" + skey;

//session.setAttribute("userid",userid);
//session.setAttribute("password",c);
//session.setAttribute("emailid",emailid);
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
//out.println("message successfully sended"); // assume it was sent

}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();





%>

