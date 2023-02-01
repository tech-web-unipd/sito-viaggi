<?php

require_once "app/User.php";
require_once "app/global.php";
require_once "app/UserService.php";

error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();
if(isset($_SESSION['user'])) {
    $user = $_SESSION['user'];
    $modified = false;
    try {
        if ($_POST['name'] !== "" && $_POST['name'] !== $user->getName()) {
            $user->modName($_POST['name'], $db);
            $modified = true;
        }

        if ($_POST['surname'] !== "" && $_POST['surname'] !== $user->getSurname()) {
            $user->modSurname($_POST['surname'], $db);
            $modified = true;
        }

        if ($_POST['username'] !== "" && $_POST['username'] !== $user->getUsername()) {
            if(!UserService::usernameAlreadyExists($_POST['username'], $db)) {
                $user->modUsername($_POST['username'], $db);
                $modified = true;
            }
        }

        if ($_POST['gender'] !== "" && $_POST['gender'] !== $user->getGender()) {
            $user->modGender($_POST['gender'], $db);
            $modified = true;
        }

        if ($_POST['birthday'] !== "" && $_POST['birthday'] !== $user->getDateOfBirth()) {
            $user->modBirthday(new Date($_POST['birthday']), $db);
            $modified = true;
        }

        if ($_POST['email'] !== "" && $_POST['email'] !== $user->getEmail()) {
            $user->modEmail($_POST['email'], $db);
            $modified = true;
        }

        if ($_POST['phone-number'] !== "" && $_POST['phone-number'] !== $user->getNumber()) {
            $user->modNumber($_POST['phone-number'], $db);
            $modified = true;
        }

        if($_POST['password'] !== "" && $_POST['repeated-password'] == $_POST['password']) {
            try {
                $user->modPassword($_POST['old-password'], $_POST['password'], $db);
                if($modified) {
                    header("location: " . BASE . "src/personal-area.php?wrongPassword=0&dataModified=1");
                } else {
                    header("location: " . BASE . "src/personal-area.php?wrongPassword=0&dataModified=0");
                }
                exit();
            } catch (WrongPassword $e) {
                if($modified) {
                    header("location: " . BASE . "src/personal-area.php?wrongPassword=1&dataModified=1");
                } else {
                    header("location: " . BASE . "src/personal-area.php?wrongPassword=1&dataModified=0");
                }
                exit();
            }
        }

        if($modified) {
            header("location: " . BASE . "src/personal-area.php?dataModified=1");
        } else {
            header("location: " . BASE . "src/personal-area.php");
        }
        exit();
    } catch (Exception $e) {
        header("location: " . BASE . "src/personal-area.php");
        exit();
    }
}