<?php include('head.php');
$qry=mysql_query("select * from user_details where u_name='".$_SESSION['u_id']."'");
if($res=mysql_fetch_assoc($qry))

?>

    <div align="center" >
    <div class="edit_profile" > @ </div>

<table class="main_table" cellpadding="20">

<tr>
<td align="center" colspan="2" style=" font-size:24px;"><u>Professional Information</u></td>
</tr>

<tr>
<td>Job :</td>
<td>
 <input class="" style="text-align:center" type="text" placeholder="Job"  name="job"/> 
<?php echo $res['job']?></td>
</tr>

<tr>
<td>School :  </td>
<td>
<input class="" style="text-align:center" type="text" placeholder="School"  name="school"/>
<?php echo $res['school']?></td>
</tr>

<tr>
<td>College : </td>
<td>
<input class="" style="text-align:center" type="text" placeholder="College"  name="coll"/> 
<?php echo $res['college']?></td>
</tr>

<tr>
<td>University : </td>
<td>
 <input class="" style="text-align:center" type="text" placeholder="University"  name="Univ"/>
<?php echo $res['university']?></td>
</tr>

<tr> 
<td colspan="2" align="center" style=" font-size:24px;"><form> <input type="submit" class="submit_button" /></form></td>
</tr>

</table>

</div>

<?php include('foot.php'); ?>