<?php

require_once "app/UserService.php";
require_once "app/global.php";

// PASSWORD = dyuffasgduisa

try {
    UserService::login($_POST['username'], $_POST['pw_hash'], $db);
    if(isset($_SESSION['want_purchase'])){
        header("location: /sito-viaggi/src/purchase_decision.php");
        exit();
    }else{
        header("location: /sito-viaggi/src/index.php");
        exit();
    }
} catch (WrongCredentials|UserNotFound $e) {
    header("location: /sito-viaggi/src/access.php?wrongCredentials=true");
    exit();
} catch (AlreadyLoggedIn $e) {
    session_destroy();
    UserService::login($_POST['username'], $_POST['pw_hash'], $db);
    header("location: /sito-viaggi/src/index.php");
    exit();
}
