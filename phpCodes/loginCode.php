<?php 
	include 'connection.php';


	$e = $_POST['email'];
	$p = $_POST['password'];


	if (isset($_POST['btnSave'])) {
		$q = mysqli_query ($con, "SELECT * from tblsecurity where uname='$e' and pword = '$p'");

		$rowscount = mysqli_num_rows($q);

		if ($rowscount != 0 ) {
			header("location:../index.php");
		}else{
			echo "<script> alert('No such Account!');</script>";


		}

	}


 ?>