<?php
    require_once 'GoogleLogin/googleconfig.php';
    
    $loginURL = $gClient->createAuthUrl();


?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    <body> 
        <?php include 'header.php' ?>
        <div class="container login">
            <h1>Pomagamo vam do boljše zaposlitve</h1>
            <div class="tab-content clear">
                <div role="tabpanel" class="tab-pane active clear" id="log">
                    <div class="loginvrsta">
                    <h3>Hitra registracija in prijava z:</h3>                  
                    <br />
                    
                    <form>
                        <input type="button" onclick="window.location = '<?php echo $loginURL ?>';" value="Log In With Google" class="btn btn-danger">
                    </form>
                    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
