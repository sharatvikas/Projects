<?php
mysql_connect('localhost','root','');
mysql_select_db('f_s');
$uid='';
$error='';
if($_SERVER["REQUEST_METHOD"] == "POST")
{
	$pass=$_POST['pass'];
	$cn_pass=$_POST['cn_pass'];
	
	$qry=mysql_query("select * from user_details where email_id='$uid' and password='$pass'");
	if($res= mysql_fetch_assoc($qry))
	{
		session_start();
		$_SESSION['e_id']=$uid;
		header('Location: login.php');
	}
	else
	{
		$error="Wrong Password";
	}
}
?>
<Doctype! html>

<html>

<head>

<title>AQTENSE CHANGE PASSWORD</title>

<link rel="stylesheet" type="text/css" href="login.css">


</head>

<body>


</br>
</br>

<div align="center" class="loginbox">
<br>
<img style="display:block; background-color:#000; border-radius:8px; margin-top:3px;" src="logo.png" width="210" height="150" longdesc="logo.png">
<h2> <b> LOGIN </b> </h2>
<h4><?php echo $error ?>
</br>

<form method="post" action="login.php">

<div class="login_container" align="center">

	<div class="nameslot" > </div>
	<div class="formslot"> <input type="password" class="formfield" placeholder="Old Password" name="pass" /></div>
    <br>
    <br>
	<div class="nameslot" > </div>
	<div class="formslot"> <input type="password" class="formfield" placeholder="New Password" name="pass" /></div>
	<br>
    <br>
	<div class="nameslot" > </div>
	<div class="formslot"> <input type="password" class="formfield" placeholder="Confirm Password" name="pass" /></div>
	<br>
    <br>
<div align="center"> <input type="submit" value="Login" class="button" ></div>

	<br>

</div>

</form>

</div>

</body>

</html>
