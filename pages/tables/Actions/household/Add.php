<?php 
	include '../../../../phpCodes/connection.php';

	$householdnumber = $_POST['householdnumber'];
	$zoneID = $_POST['zoneID'];
	$householdmember = $_POST['householdmember'];
	$headoffamily = $_POST['headoffamily'];

	mysqli_query($con, "INSERT INTO tblhousehold ('householdnumber', 'zoneID', 'householdmember', 'headoffamily') VALUES ('$householdnumber', '$zoneID', '$householdmember', '$headoffamily')");

 ?>