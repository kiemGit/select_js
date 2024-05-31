<?php
include 'database.php';
$dObject = new Databases;

#$sql1 = "select * from customers";
$sql1 = "select locId,Name from location where locParentId = 0";
$my_array = $dObject->select($sql1);
#print_r($my_array);

#echo "<br>";
#echo "<br>";

echo json_encode($my_array, JSON_NUMERIC_CHECK);

?>