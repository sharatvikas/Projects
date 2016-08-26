<?php include('head.php'); 
$qry=mysql_query("select * from user_details where u_name='".$_SESSION['u_id']."'");
if($res=mysql_fetch_assoc($qry))
{
?>

    <div align="center" >
    <div class="edit_profile" > @ </div>

<table class="main_table" cellpadding="20">

<tr>
<td align="center" colspan="2" style=" font-size:24px;"><u>Personal Information</u></td>
</tr>

<tr>
<td>First Name :</td>
<td><?php echo $res['f_name']?></td>
</tr>

<tr>
<td>Last Name :</td>
<td><?php echo $res['l_name']?></td>
</tr>

<tr>
<td>Birth Date :</td>
<td><?php echo $res['dob']?></td>
</tr>

<tr>
<td style="float:left">Gender :</td>
<td><?php echo $res['gender']?></td>
</tr>

<tr> 
<td colspan="2" align="center" style=" font-size:24px;"><u>Contact Details</u></td>
</tr>

<tr>
<td>Address :</td>
<td><?php echo $res['loc']?></td>
</tr>

<tr>
<td>Email-id :</td>
<td><?php echo $res['e_id']?></td>
</tr>

<tr>
<td>Phone Number :</td>
<td><?php echo $res['phno']?></td>
</tr>

</table>

</div>


 <?php 
}
else
header('Location: logout.php');
include('foot.php'); ?>