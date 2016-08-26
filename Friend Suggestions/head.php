<?php
@session_start();
$login=true;
include('db_con.php');
if(@empty($_SESSION['u_id']))
{
include('login.php');
die();
}
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Profile</title>
<link href="ProfSyle.css" rel="stylesheet" type="text/css" />
<link href="login.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="taskbar">

<div class="menu_icon">
<img style="float:right;height:30px;" src="assets/menu_icon.png" onClick="togglemenu()" />
</div>
<script src="myjs.js"></script>

<div class="taskbar_container"> <!-- contains taskbar buttons -->
<a href="Personal.php"><div class="taskbar_button">Personal</div></a>
<a href="Professional.php"><div class="taskbar_button">Professional</div></a>
<a href="Interests.php"><div class="taskbar_button">Interest</div></a>
<a href="FindFriends.php"><div class="taskbar_button">Find Friends</div></a>
</div>
</div>

<div class="menu" id="menu">
<div class="dp"> 
<img src="BlankDP.jpg">
</div>
<div class="menu_items"> <a href="logout.php"> LogOut </a> </div>
<div class="menu_items"> <a href="cnpwd.php"> Change Password </a> </div>
</div>

</br>

<div class="content">

<!--
<div id="divWrap">
  <div id="divHead">
    <div class="user_items">
      <!-- contains profile image and dropdown items -->
  <!-- 
     <div id="divProfile"> <img src="BlankDP.jpg" width="150px" height="150px" />
        <a href="cnpwd.php"> Change Password </a>
        <br>
        <a href="logout.php"> Log Out </a>
      </div>
    </div>
 
</div> -->
