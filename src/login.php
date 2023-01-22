<?php

require_once "app/UserService.php";
require_once "app/global.php";

// PASSWORD = dyuffasgduisa

try {
    UserService::login($_POST['username'], $_POST['pw_hash'], $db);
} catch (WrongCredentials|UserNotFound|AlreadyLoggedIn $e) {
    header("location: /sito-viaggi/src/access.php?wrongCredentials=true");
}
