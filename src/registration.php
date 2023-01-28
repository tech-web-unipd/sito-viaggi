<?php

require_once "app/global.php";
require_once "app/UserService.php";

$user = new User($_POST["username"], "user", $_POST['name'], $_POST['surname'], $_POST['gender'], new Date( $_POST['date_of_birth']), $_POST['email'], $_POST['phone-number'], $_POST['password']);
try {
    UserService::userRegistration($user, $db);
    UserService::login($_POST['username'], $_POST['password'], $db);
    if(isset($_SESSION['want_purchase'])){
        header("location: " . BASE . "src/purchase_decision.php");
        exit();
    }else{
        header("location: " . BASE . "src/index.php");
        exit();
    }
} catch (UserExistent $e) {
    header("location: " . BASE . "src/access.php");
    exit();
}