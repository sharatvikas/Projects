

<?php
mysql_connect('localhost','root','');
mysql_select_db('f_s');
$uid='';
$error='';
if($_SERVER["REQUEST_METHOD"] == "POST")
{
	$uid=mysql_real_escape_string($_POST['uid']);
	$pass=mysql_real_escape_string($_POST['pass']);
	
	$qry=mysql_query("select * from user_details where u_name='$uid' and pass='$pass'");
	if($res= mysql_fetch_assoc($qry))
	{
		session_start();
		$_SESSION['u_id']=$uid;
		header('Location: index.php');
	}
	else
	{
		$error="Wrong UserID or Password";
	}
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>AQTENSE LOG-IN</title>
<link href="login.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php echo md5(1);?>

<div class="content_wrapper"> <!-- contains logo and input slots -->
<div class="logo_holder" style="margin-left:-80px;"> <img src="reflogo.png"  height="300px" /> </div>
<div class="input_holder" style="margin-right:50px;"><!-- holds input slots -->
<form action="login.php" method="post">

<input  class="user_form" type="text" placeholder="User Name"  name="uid" autofocus="autofocus"/><br />
<input class="user_form" type="password" placeholder="Password" name="pass" /><br />
<input type="submit" class="submit_button" value="Login"  /> 
<a href="Register.php"><input type="button" class="submit_button" value="Register" style="float:right;" /></a>

</form>

</div>

</div>

</body>
</html>
