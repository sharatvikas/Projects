<?php
include('db_con.php');
$f_name='';
$l_name='';
	$e_id='';
	$u_name='';
	$p_no='';
	$pass='';
	$cn_pass='';
	$date='';
	$month='';
	$year='';
	$gender='';
	$loc='';
	$error='';
if($_SERVER["REQUEST_METHOD"] == "POST")
{
	$f_name=mysql_real_escape_string($_POST['f_name']);
	$l_name=mysql_real_escape_string($_POST['l_name']);
	$e_id=mysql_real_escape_string($_POST['e_id']);
	$u_name=mysql_real_escape_string($_POST['u_name']);
	$pass=mysql_real_escape_string($_POST['pass']);
	$cn_pass=mysql_real_escape_string($_POST['cn_pass']);
	$date=mysql_real_escape_string($_POST['date']);
	$month=mysql_real_escape_string($_POST['month']);
	$p_no=mysql_real_escape_string($_POST['phno']);
	$year=mysql_real_escape_string($_POST['year']);
	$gender=mysql_real_escape_string($_POST['gender']);
	$loc=mysql_real_escape_string($_POST['loc']);
	$cnt=0;
	
	if(!empty($f_name)&&!empty($l_name)&&!empty($e_id)&&!empty($u_name)&&!empty($pass)&&!empty($cn_pass)&&($gender!='Select')&&!empty($loc)&&!empty($p_no))
	{
		if($pass!=$cn_pass)
		$error.=++$cnt.") Pasword error <br>";
		
		if(!filter_var($e_id, FILTER_VALIDATE_EMAIL))
		$error.=++$cnt.") Invalid email <br>";
		
		if(!preg_match("/^[a-zA-Z' -]+$/",$f_name))
			$error .= ++$cnt. ') Not a First Name <br>';
			
			if(!preg_match("/^[a-zA-Z' -]+$/",$l_name))
			$error .= ++$cnt. ') Not a Last Name <br>';
			
			if(!preg_match("/\d{10}/",$p_no))
			$error .= ++$cnt. ') Not a valid Phone Number <br>';
		
		if($error=='')
		{
		$query="INSERT INTO `user_details` VALUES ('$f_name','$l_name','$e_id','$u_name', '$pass','$date-$month-$year','$gender','$loc','$p_no')";
			if(mysql_query($query))
			{
				header('Location: login.php');
			}
			else
			$error.=++$cnt.") Sql Error <br>";
		}
			
		
	}
	else
		$error.=++$cnt.") Check the values <br>";
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration</title>
<link href="login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div style="width:600px; margin:auto;"> 
<div class="logo_holder"  style="margin:auto;margin-left:90px;" > <img src="reflogo.png"  height="300px" /> </div>

<div class="input_holder" style="margin:auto;">
<h4><?php echo $error; ?></h4>
<form action="Register.php" method="post">

<input  class="user_form" type="text" placeholder="First Name"  name="f_name"  value='<?php echo $f_name ?>' /><br />

<input  class="user_form" type="text" placeholder="Last Name"  name="l_name"  value='<?php echo $l_name ?>' /><br />
<input  class="user_form" type="text" placeholder="Email-ID"  name="e_id"  value='<?php echo $e_id ?>' /><br />
<input  class="user_form" type="text" placeholder="Phone-No"  name="phno"  value='<?php echo $p_no ?>' /><br />
<input  class="user_form" type="text" placeholder="User Name"  name="u_name"  value='<?php echo $u_name ?>' /><br />
<input  class="user_form" type="password" placeholder="Password"  name="pass" /><br />
<input  class="user_form" type="password" placeholder="Confirm Password"  name="cn_pass" /><br /><br />

<div>
<select class="formslot" name="date"  style="width:60px">
<?php 
for($i=1;$i<32;$i++)
{
	echo '<option value="'.$i.'" ';
	if($date==$i)
	echo 'Selected';
	echo ' >'.$i.'</option>';
}
?>
 </select>

<select class="formslot" name="month"  >
 <?php 
for($i=1;$i<13;$i++)
{
	echo '<option value="'.$i.'" ';
	if($month==$i)
	echo 'Selected';
	echo ' >'.$i.'</option>';
}
?>
</select>

<select size="1" class="formslot" name="year"  >
<?php 
for($i=1972;$i<2010;$i++)
{
	echo '<option value="'.$i.'" ';
	if($year==$i)
	echo 'Selected';
	echo ' >'.$i.'</option>';
}
?>
</select> </div>
<br />

<div>
<select size="1" class="formslot1" name="gender" >
  <option value=""> Gender </option>
  <option value="Male" <?php if ($gender=='Male') echo 'SELECTED';?> > Male </option>
  <option value="Female" <?php if ($gender=='Female') echo 'SELECTED';?> > Female </option>
</select>
</div>


<input  class="user_form" type="text" placeholder="Location"  name="loc" value='<?php echo $loc ?>' /><br />

<input type="submit" class="submit_button" value="Submit" style="margin-left:70px" /> 
</form>
</div>

</div>
</body>
</html>
