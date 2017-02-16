<?php
header("content-type:application/json");
$userEmail = $_REQUEST['userEmail'];
require('init.php');
$sql = "SELECT userEmail FROM registeemail WHERE userEmail = '$userEmail'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
if($row===null){
	$code = [
		'code'=>0,
	];
	echo json_encode($code);
}else{
	$code = [
		'code'=>1,
	];
	echo json_encode($code);
}
