<?php
header('content-type:application/json');
require('init.php');
$sql="SELECT hgName,img,title FROM hotgame";
$result=mysqli_query($conn,$sql);
$list=mysqli_fetch_all($result,1);
echo json_encode($list);