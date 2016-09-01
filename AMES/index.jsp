<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AMES - CLOUD</title>
<link href="style1.css" rel="stylesheet" type="text/css" />
</head>

<script language="JavaScript" type="text/javascript">
function valid1()
{
var d=document.f1.mail.value;
if(d=="")
{
alert("Enter ur E-Mail Id");
document.f1.mail.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.f1.mail.value);
if(m==false)
{
alert("Please enter a Valid Email Id.  Ex(user@ymail.com)");
document.f1.mail.focus();
return false;
}
var b=document.f1.pass.value;
if(b==""){
alert("Enter Password");
document.f1.pass.focus();
return false;
}
}

</script>

<body>

<div align="center" style="width:400px;height:100px;margin:auto;margin-top:50px;">

<div style="float:left; font-size:70px; font-family: 'Segoe UI Light'; margin-top:20px;color:#fff;text-shadow: 3px 3px 0px rgba(0, 0, 0, 1); ">AMES -</div>

<div style="float:right;margin-left:-20;margin-top:20px;">
<img  src="asss/cloud.png" height="100" />
</div>

</div>


<div style= "height:219px;width:600px;background:white;margin:auto;margin-top:150px;-webkit-box-shadow: 10px 10px 0px 0px rgba(59,59,59,1);
-moz-box-shadow: 10px 10px 0px 0px rgba(59,59,59,1);
box-shadow: 10px 10px 0px 0px rgba(59,59,59,1); ">
<div style="width:500px;height:219px;float:left;background:#fff">

<div style="height:109px;margin-top:10px;" >
<form action="login1.jsp" name="f1" method="get" onsubmit="return valid()1">
<div style="float:left;margin-left:30px;margin-top:35px;font-size:25px;color:#999;"> email  </div>
<div style="float:right;margin-right:30px;margin-top:35px;"> <input type="text" type="text" name="mail" placeholder="email" style="height:30px; text-align:center;border:1px solid #ccc;width:250px;"/>
</div>

</div>

<div style="height:109px;" >

<div style="float:left;margin-left:30px;margin-top:35px;font-size:25px;color:#999;"> passcode  </div>
<div style="float:right;margin-right:30px;margin-top:35px;"> <input type="text" type="text" name="pass" placeholder="pascode" style="height:30px; text-align:center;border:1px solid #ccc;width:250px;"/>
</div>

</div>




</div>
<div class="butn" style="background:#34495e;">
<input type="submit" style="height:73px;width:100px;float:right;position:absolute;opacity:0"/>
<img src="asss/lock.png" height="50" style="margin-left:30px;margin-top:7px;" />
</form>
</div>
<div class="butn" style="background:#c0392b;">
<a href="adminlogin.jsp"><img src="asss/admin.png" height="50" style="margin-left:25px;margin-top:7px;" /></a>
</div>
<div class="butn" style="background:#6699cc;">
<a href="signup.html">
<img src="asss/reg.png" style="margin-left:20px;margin-top:7px;"/>
</a>
</div>
</div>





</body>
</html>
