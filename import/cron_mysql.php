<?php
$servername = "localhost";
$username = "root";
$password = "a0482000A";
$dbname = "sis backup 3-14-2017";
 
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
 
// sql to delete a record

deleteAll() FROM cordat1;


 
if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}
 
$conn->close();
?>