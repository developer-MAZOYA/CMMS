<?php
 $currentDpt;
 $currentRank;
    include('../session/fetchSession.php');
    include('reminder.php');
    include('../session/killSession.php');
?>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            CMMS->home
        </title>
        <link href='notifications.css' rel='stylesheet'/>
    </head>
    <body class="hBody">
        <div class="hBodyContainer">
            <div class="dashboard">
                <span class="CMMS">
                    CMMS
                </span>
                
                <span class='logo3'>
                <img src='../images/logo3.png' alt='' width='1200px' style='z-index:-1'/>    
                </span>
                
                <?php
                    $currentUser = strtolower($currentUser);
                    if ($currentRank === 'admin') {
                        echo "
                        <span class='menuSpan newMeeting'>
                        <a href='../newMeeting/newMeeting.php' class='newMeetingLink'>
                            Create new meeting
                       </a>
                    </span>
                        ";

                    }
                ?>
                
               

                <span class="menuSpan">
                    <a href="../signup/signup.php" class="newMeetingLink">
                        Create new Account
                   </a>
                </span>

                <?php
                     if ($currentUser != 'admin') {
                        echo "
                        <span class='menuSpan'>
                        <a href='#' class='newMeetingLink'>
                            Notifications
                       </a>
                    </span>
                        ";
                     }
                ?>


                <?php
                    if ($currentUser === 'admin') {
                        echo "
                        <span class='menuSpan'>
                            <a href='../admin/admin.php' class='newMeetingLink'>
                                Admin panel
                            </a>
                        </span>
                        ";
                    }
                ?>

                <span class="menuSpan">
                    <a href="../myDetails/admdetails.php" class="newMeetingLink">
                        CMMS Details
                   </a>
                </span>

                <span class="menuSpan">
                    <a href="../index.php" class="newMeetingLink">
                        Log Out
                   </a>
                </span>

            </div>
            <div class="currentDiv">
                <span class="nTitle">
                    Announcements
                </span>
                <span>
                    <?php
                    include ('../connect/connect.php');

                    $sql = "SELECT * FROM meetings WHERE department = '$currentDpt'  OR department = 'all' ORDER BY meetingId DESC";

                        $result = mysqli_query($conn, $sql);
                    
                        if ($result && mysqli_num_rows($result) > 0) {
                            
                            while ($row = mysqli_fetch_assoc($result)) {
                                $meetingCode = $row['meetingCode'];
                                $sql2 = "SELECT * FROM replies WHERE meetingCode = '$meetingCode' ORDER BY rId DESC ";

                                $result2 = mysqli_query($conn, $sql2);
                            
                                if ($result2 && mysqli_num_rows($result2) > 0) {
                                    
                                    while ($row2 = mysqli_fetch_assoc($result2)) {
                                        echo "<div class='notificationContainer'style='padding-top:10px;'>";
                                        echo "<span>Reply on <b>" . $row['title'] . "</b></span>";
                                        echo "<p class='meetingDescription'>" . $row2['reason'] . "</p>";
                                        echo "<span class='notificationVenue'>by <b>" . $row2['username'] . "</b></span>";
                                        echo "</div>";
                                    }
                                } 
                                $title = "";
                                echo "<div class='notificationContainer'>";
                                echo "<h2>" . $row['title'] . "</h2>";
                                echo "<p class='meetingDescription'>" . $row['descriptions'] . "</p>";
                                echo "<span class='notificationVenue'>Location: <b>" . $row['venue'] . " ,</b></span>";
                                echo "<span class='notificationDate'>Date: " . $row['tarehe'] . " ,</span>";
                                echo "<span class='notificationTime'> Time:" . $row['muda'] . "</span>";
                                echo "<a href='../reply/reply.php?title=".$title."&sender=".$row['meetingCode']."' style='color:rgb(96, 8, 20)'>
                                   will not attend?
                                </a>";


                                echo ".";
                                echo "<a href='../document/document.php?title=".$title."&sender=".$row['meetingCode']."' style='color:rgb(6,15,46)'>
                                Add document
                             </a>";

                             
                                echo "</div>";
                            }
                        } else {
                            echo "
                            <div style='margin-top:14px;'>
                            Your notifications will appear here.
                            </div>
                            ";
                        }
                    
                    ?>
                </span>
            </div>
        </div>
       
    </body>
</html>