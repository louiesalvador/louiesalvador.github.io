<?php
	include '../../../../phpCodes/connection.php';


	mysqli_query($con,"DELETE from tblblotter where blotterID='".$_POST[p_id]."'");

?>