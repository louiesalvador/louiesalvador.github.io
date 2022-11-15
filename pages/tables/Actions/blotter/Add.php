<?php 
	include '../../../../phpCodes/connection.php';

	$yr = $_POST['yr'];
	$dr = $_POST['dr'];
	$com = $_POST['com'];
	$comAge = $_POST['comAge'];
	$comAdd = $_POST['comAdd'];
	$contact = $_POST['contact'];
	$perCom = $_POST['perCom'];
	$perAge = $_POST['perAge'];
	$perAdd = $_POST['perAdd'];
	$perCon = $_POST['perCon'];
	$comP = $_POST['comP'];
	$at = $_POST['at'];
	$comSta = $_POST['comSta'];
	$locIn = $_POST['locIn'];
	$userId = $_POST['userId'];


if($_POST ['blotterID']" ")
{
	mysqli_query($con, "INSERT INTO tblblotter values ('$yr', '$dr', '$com', '$comAge', '$comAdd', '$contact', '$perCom', '$perAge', '$perAdd', '$perCon', '$comP', '$at', '$comSta', '$locIn', '$userId')");
}
	else
	{
		mysqli_query($con,"UPDATE tblblotter set yearrecorded='$yr', daterecorded='$dr', complain=$com ,cAge='$comAge', cContact='$contact',persontcomplain=$perCom, pAge='$perAge', pAddress='$perAdd',pContact=$perCon,complaint='$comP', actiontaken='$at',complaintstatus=$comSta, locationofincident='$locIn',userID=$userId where blotterID='".$_POST['p_id']."'");
	}
	
 ?>