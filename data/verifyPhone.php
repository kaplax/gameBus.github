<?php
header("content-type:application/json");
$userphone = $_REQUEST['phoneNum'];
require('init.php');
$sql = "SELECT userphone FROM registephone WHERE userphone = '$userphone'";
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
