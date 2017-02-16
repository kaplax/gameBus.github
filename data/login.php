<?php
$userName = $_REQUEST['username'];
$userPassword = $_REQUEST['userpassword'];
require('init.php');
$sql = "SELECT username,userpassword 
		From registephone WHERE username = '$userName' 
		AND userpassword = '$userPassword'";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
if ($row === NULL){
	echo 0;
}else{
	echo 1;
}