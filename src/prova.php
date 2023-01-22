<?php
require_once "app/UserService.php";

if(UserService::usernameAlreadyExists("zaaan", $db)) echo "OOLARE";
