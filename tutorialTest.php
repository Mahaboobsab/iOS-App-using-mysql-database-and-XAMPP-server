//Create database in mysql which consist of id,name and message in test Table in XAMPP Server and store this file in htdocs

<?php
$DB_HostName = "localhost";
$DB_Name = "testDB";
$DB_User = "root";
$DB_Table = "test";
$connect = mysql_connect($DB_HostName,$DB_User);
mysql_select_db("$DB_Name");
if (isset($_GET['id'])) { // If the id post variable is set
    $identity = $_GET['id'];
} else { // If the id post variable is not set
    $identity = 425;
}
if (isset($_GET['name'])) { // If the id post variable is set
    $nameStr = $_GET['name'];
} else { // If the id post variable is not set
    $nameStr = 'Meheboob';
}
if (isset($_GET['message'])) { // If the id post variable is set
    $messageStr = $_GET['message'];
} else { // If the id post variable is not set
    $messageStr = 'Hi';
}
$query = "INSERT INTO test (id,name,message) VALUES ('$identity','$nameStr','$messageStr')";
mysql_query($query);
mysql_close();
if($query){

echo "Successfull";
}
else{

echo "failed";
}
?>