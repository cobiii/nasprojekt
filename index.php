<?php
session_start();




?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    
    <body>
        <?php include 'header.php' ?>
        <div class="container login">
            <h1>Profil: <?php echo $_SESSION['givenName'] ?></h1>
            <div class="tab-content clear">
                <div role="tabpanel" class="tab-pane active clear" id="log">
                    <div class="loginvrsta">
                         <table>
				<tr>
                                    <td>First Name</td>
                                    <td><?php echo $_SESSION['givenName'] ?></td>
				</tr>
				<tr>
                                    <td>Last Name</td>
                                    <td><?php echo $_SESSION['familyName'] ?></td>
				</tr>
				<tr>
                                    <td>Email</td>
                                    <td><?php echo $_SESSION['email'] ?></td>
				</tr>
                                <tr>
                                    <td>Gender</td>
                                    <td><?php echo $_SESSION['gender'] ?></td>
				</tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
