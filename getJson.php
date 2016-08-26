
//Create database in mysql XAMPP Server and store this file in htdocs
<?php
$link = mysql_pconnect("localhost", "root", "") or die("Could not connect");
mysql_select_db("testDB") or die("Could not select database");
 
$arr = array();
 
$rs = mysql_query("SELECT * FROM test");
 
while($obj = mysql_fetch_object($rs)) {
$arr[] = $obj;
}
echo '{"members":'.json_encode($arr).'}';
?>
