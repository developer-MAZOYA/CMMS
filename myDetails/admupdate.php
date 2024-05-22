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


$empID=$_GET['empID'];
$sql= "SELECT * FROM `employeedetails` WHERE empID=$empID";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
$fName = $row['fName'];
$sName = $row['sName'];
$passwords = $row['passwords'];
$department = $row['department'];
$rank = $row['rank'];

if ($_SERVER["REQUEST_METHOD"]=="POST") {

    $fName = $_POST['fName'];
    $sName = $_POST['sName'];
    $passwords = $_POST['passwords'];
    $department = $_POST['department'];
    $rank = $_POST['rank'];
   

  
    
    // Insert data into database
    $sql = "UPDATE `employeedetails` SET empID=$empID,fname='$fname',sName='$sName',username='$username',passwords='$passwords',department='$department',rank='$rank'
    ,dateRegistered='$dateRegistered' WHERE empID=$empID";
    
           $result=mysqli_query($conn,$sql);
    if ($result) {
    // echo "update successfully";
        header('location:admdetails.php');
    } else {
        die(mysqli_error($conn));
    }
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <title>CMMS update Details</title>
    <link rel='stylesheet' href='../signup/signup.css'/>
    <style>
        body{
            background-color: black;
        }
        </style>
</head>
<body>
  
    
</div>
</div>
<span class="wavyCMMS">
        <span class="wavy-bounce">C</span>
        <span class="wavy-bounce">M</span>
        <span class="wavy-bounce">M</span>
        <span class="wavy-bounce">S</span>
    </span>
        <div class="signupFormContainer">
            <span>
                <form class="signupForm" method='POST'>
                    <div class="nInputContainer">
                        <span>
                            <input type="text" placeholder="First Name" class="nInput" name='fName'/>
                        </span>
                        <span>
                            <input type="text" placeholder="Last Name" class="nInput" name='sName'/>
                        </span>
                    </div>
                    <span>
                        <select class='sInput dptSelection' name='department'>
                            <option disabled selected>
                                Select department
                            </option>
                            <option value='Department A'>
                                Department A
                            </option>
                            <option value='Department B'>
                                Department B
                            </option>
                            <option value='Department C'>
                                Department C
                            </option>
                            <option value='Department D'>
                                Department D
                            </option>
                            <option value='Department E'>
                                Department E
                            </option>
                        </select>
                    </span>
                    <span>
                        <input type="password" placeholder="Password" class="sInput" name='passwords' required/>
                    </span>
                    
                    <span>
                        <select class='sInput dptSelection' name='rank'>
                            <option disabled selected>
                                rank
                            </option>
                            <option value='normal'>
                                Normal user
                            </option>
                            <option value='admin'>
                                Administrator
                            </option>
                        </select>
                    </span> 

                    <span>
                        <input type="submit" value="Update" class="signupButton"/>
                    </span>
                </form>
            </span>
        </div>
    <style>
 
    </style>
</body>
</html>
