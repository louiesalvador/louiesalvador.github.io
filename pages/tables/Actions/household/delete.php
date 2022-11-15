<?php
	include '../../../../phpCodes/connection.php';


	mysqli_query($con,"DELETE from tblhousehold where householdID='".$_POST[p_id]."'");

?>