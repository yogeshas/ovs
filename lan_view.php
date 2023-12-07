<head>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<style type="text/css">
    body {
     background: url("images/wallpaper.jpg");
    background-size: cover;
}

 

</style>
<?php
if(!isset($_SESSION)) { 
session_start();
}
include "auth.php";

?>
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="ELECTRONICCITY.php" class="w3-bar-item w3-button w3-padding-large">Home</a>
    <a href="lan_view.php" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Vote Results</a>
    <a href="profile.php" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Profile</a>
    <a href="logout.php" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Logout</a>
    <a href="change_pass.php" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Change Password</a>

    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small"> Welcome <?php echo $_SESSION['SESS_NAME']; ?></a>
    
  </div>

<?php
include "connection.php";
$member = mysqli_query($con, 'SELECT * FROM languages' );
if (mysqli_num_rows($member)== 0 ) {
	echo '<font color="red">No results found</font>';
}
else {
	echo '<center><table style="width:700px;height:400px;color:white;margin-top:100px;" class="w3-table-all"><tr style="background-color:red;">
<td  height="40px" align="center">ID</td>		
<td   align="center" >LANGAUAGE</td>

<td  align="center">VOTE</td>
</tr>';
while($mb=mysqli_fetch_object($member))
		{	
			$id=$mb->lan_id;
			$name=$mb->fullname;
			
			$vote=$mb->votecount;
			echo '<tr  align="center" style="background-color:white;color:black;">';
	echo '<td>'.$id.'</td>';		
	echo '<td>'.$name.'</td>';
	
	echo '<td>'.$vote.'</td>';
	echo "</tr>";
		}
		echo'</table></center>';
	}
?>