<?php
$username = $_REQUEST['username'] or die;
$userpassword = $_REQUEST['userpassword'] or die;
$userphone = $_REQUEST['userphone'] or die;
$regTime = time()*1000;
require('init.php');
$sql = "INSERT INTO registephone VALUES(NULL,'$username','$userpassword','$userphone','$regTime')";
$result = mysqli_query($conn,$sql);
if($result === false){
	echo "error";
}else{
	echo "success";
}