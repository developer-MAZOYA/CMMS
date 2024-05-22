<?php
// Database connection
$servername = "localhost"; // Change this to your MySQL server hostname
$username = "root"; // Change this to your MySQL username
$password = ""; // Change this to your MySQL password
$dbname = "cmms"; // Change this to your database name
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if(isset($_GET['empID'])){
    $member_id= $_GET['empID'];

    $sql="delete from `employeedetails` where empID=$empID";
    $result=mysqli_query($conn,$sql);
    if($result){
       // echo "Delete successfully";
       header('location:admdetails.php');
    }else{
        die(mysqli_error($conn)); 
    }
}

?>