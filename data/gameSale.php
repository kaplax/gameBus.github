<?php
header('content-type:application/json');
require('init.php');
$sql='SELECT gname,gtype,gplatform,type,date FROM gamesale';
$result=mysqli_query($conn,$sql);
$list=mysqli_fetch_all($result,1);
echo json_encode($list);
