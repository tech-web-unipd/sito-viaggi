<?php

require_once "app/global.php";
require_once "app/UserService.php";

$user = new User($_POST["username"], "user", $_POST['name'], $_POST['surname'], $_POST['gender'], new Date( $_POST['date_of_birth']), $_POST['email'], $_POST['phone-number'], $_POST['password']);
try {
    UserService::userRegistration($user, $db);
    UserService::login($_POST['username'], $_POST['password'], $db);
    header("location: /sito-viaggi/src/index.php");
    exit();
} catch (UserExistent $e) {
    header("location: /sito-viaggi/src/access.php");
    exit();
}