<?php
header("content-type:application/json");
$username = $_REQUEST['username'];
require('init.php');
$sql = "SELECT username FROM registephone WHERE username = '$username'";
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
