<?php
	include '../../../../phpCodes/connection.php';

	$q=mysqli_query($con,"SELECT * from tblhousehold where householdID='".$_POST[p_id]."'");
	$rows=mysqli_fetch_array($q);
	echo json_encode($rows);



?> 