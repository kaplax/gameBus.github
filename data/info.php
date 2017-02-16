<?php
header('Content-type:application/json');
require('init.php');
$sql = 'SELECT * From inforcontent WHERE infoName = "dianwan"';
$result = mysqli_query($conn,$sql);
$dwList = mysqli_fetch_all($result,1);
$sql = 'SELECT * From inforcontent WHERE infoName = "wangyou"';
$result = mysqli_query($conn,$sql);
$wyList = mysqli_fetch_all($result,1);
$resultList = [$dwList,$wyList];



echo json_encode($resultList);