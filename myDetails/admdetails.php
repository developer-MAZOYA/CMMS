<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>administrator</title>
</head>
<body>
        <div class="container">

          <button class="btn btn-primary my-5"><a href="../signup/signup.php" class="text-light">Add user</a></button>
          <button class="btn btn-danger my-5" ><a href="../index.php" class="text-light">Exit</a></button>

     <table class="table">
      <thead>
        <tr>
         <th scope="col">Sl No</th>
         <th scope="col">Firstname</th>
          <th scope="col">Lastname</th>
         <th scope="col">Username</th>
         <th scope="col">Password</th>
         <th scope="col">Department</th>
         <th scope="col">Rank</th>
         <th scope="col">DateRedistered</th>
         <th scope="col">Operations</th>
          </tr>
      </thead>
       <tbody>
    
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


$sql="Select * from `employeedetails` ";
$result=mysqli_query($conn, $sql);
if($result){
    while($row=mysqli_fetch_assoc($result)){
    $empID= $row['empID'];
    $fName=$row['fName'];
    $sName= $row['sName'];
    $username= $row['username'];
    $passwords= $row['passwords'];
    $department= $row['department'];
    $rank= $row['rank'];
    $dateRegistered= $row['dateRegistered'];
    echo'<tr>
    <th scope="row">'.$empID.'</th>
    <td>' .$fName. '</td>
    <td>' .$sName. '</td>
    <td>' .$username. '</td>
    <td>' .$password. '</td>
    <td>' .$department.'</td>
    <td>' .$rank.'</td>
    <td>' .$dateRegistered. '</td>
    <td>
     <button class="btn btn-primary" method="post"><a href="admupdate.php? updateid='.$empID.'" class="text-light">Update</a></button>
     <br><button class="btn btn-danger"><a href="admdelete.php? deleteid='.$empID.'" class="text-light">Delete..</a></button>
    </td>
    </tr>';

 }
}

?>


</tbody>
</table>
</div>
</body>
<style>
    body{
            background-color:black;
            background-repeat:no-repeat;
            background-position: center;
            background-attachment: fixed;
            background-size: cover;
            align-items:center;
           
    }
    table{
        width: 100%;
        height: 100%;
        border-collapse: collapse;
        
        
    }
    th, td{
        padding:8px;
        text-align: left;
        width: 10%;
    }

</style>
</html>
