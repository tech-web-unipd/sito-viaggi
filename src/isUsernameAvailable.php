<?php
require_once "app/UserService.php";

if(isset($_GET['username'])) {
    if(!UserService::usernameAlreadyExists($_GET['username'], $db)) echo true;
}
