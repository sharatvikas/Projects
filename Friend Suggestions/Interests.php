<?php 
@session_start();
include('db_con.php');
if($_SERVER["REQUEST_METHOD"] == "POST")
{
	@$music=$_POST['Music'];
	@$sport=$_POST['Sport'];
	@$tech=$_POST['Technology'];
	@$r_books=$_POST['Reading_Books'];
	@$adv=$_POST['Adventure'];
	@$game=$_POST['Gaming'];
	@$code=$_POST['Coding'];
	
	$query = mysql_query("SELECT * from `intr` where uid='".$_SESSION['u_id']."'");

if( mysql_num_rows($query) > 0) {
	
   $query2="UPDATE `intr` SET  
   music='$music', sports='$sport', tech='$tech', r_books='$r_books', adv='$adv', game='$game', code='$code'
   where uid='".$_SESSION['u_id']."'";
}
else
{
    $query2="INSERT INTO `intr` VALUES ('$music','$sport','$tech','$r_books','$adv','$game','$code',NULL,'".$_SESSION['u_id']."')";
}
	
	if($res=mysql_query($query2))
	{
		header('Location: Interests.php');
	}
	else
	echo mysql_error();
	
}

include('head.php'); 
?>

     
     
      <div id="divCheck">
      <?php 
	  $qry=mysql_query("select * from intr where uid='".$_SESSION['u_id']."'");
	  $res=mysql_fetch_assoc($qry)
	  
	  ?>
      
      <div align="center" >

<table class="main_table">
<form method="post" action="Interests.php">
<tr>
<td style=" width:200px;">Music</td>
<td><div class="checkboxTwo">
  		<input type="checkbox" value="yes" id="checkboxTwoInput" name="Music" <?php if($res['music']=='yes') echo 'checked'?>  style="visibility:hidden" />
	  	<label for="checkboxTwoInput"></label>
  	</div></td>
</tr>

<tr>
<td>Sports</td>
<td>	<div class="checkboxTwo">
  		<input type="checkbox" value="yes" id="checkboxTwoInput1" name="Sport" <?php if($res['sports']=='yes') echo 'checked'?> style="visibility:hidden"  />
	  	<label for="checkboxTwoInput1"></label>
  	</div></td>
</tr>

<tr>
<td>Technology</td>
<td>	<div class="checkboxTwo">
  		<input type="checkbox" value="yes" id="checkboxTwoInput2" name="Technology" <?php if($res['tech']=='yes') echo 'checked'?> style="visibility:hidden"  />
	  	<label for="checkboxTwoInput2"></label>
  	</div></td>
</tr>

<tr>
<td>Reading</td>
<td>	<div class="checkboxTwo">
  		<input type="checkbox" value="yes" id="checkboxTwoInput3"  name="Reading_Books" <?php if($res['r_books']=='yes') echo 'checked'?>  style="visibility:hidden"  />
	  	<label for="checkboxTwoInput3"></label>
  	</div></td>
</tr>

<tr>
<td>Adventure</td>
<td>	<div class="checkboxTwo">
  		<input type="checkbox" value="yes" id="checkboxTwoInput4" name="Adventure" <?php if($res['adv']=='yes') echo 'checked'?> style="visibility:hidden" />
	  	<label for="checkboxTwoInput4"></label>
  	</div></td>
</tr>

<tr>
<td>Gaming</td>
<td>	<div class="checkboxTwo">
  		<input type="checkbox" value="yes" id="checkboxTwoInput5" name="Gaming" <?php if($res['game']=='yes') echo 'checked'?> style="visibility:hidden" />
	  	<label for="checkboxTwoInput5"></label>
  	</div></td>
</tr>

<tr>
<td>Coding</td>
<td>	<div class="checkboxTwo">
  		<input type="checkbox" value="yes" id="checkboxTwoInput6" name="Coding" <?php if($res['code']=='yes') echo 'checked'?> style="visibility:hidden"  />
	  	<label for="checkboxTwoInput6"></label>
  	</div></td>
</tr>
<tr> 
<td colspan="2" align="center" style=" font-size:24px;"><div style="margin-left:-60px;"> <input type="submit" class="submit_button" value="submit" name="submit" /></form></div></td>

</tr>

</table>
<br />

</div>
      
      
      
    
    
<?php include('foot.php'); ?>
