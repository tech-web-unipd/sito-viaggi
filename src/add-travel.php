<?php

require_once "app/global.php";
require_once "app/Travel.php";

error_reporting(E_ALL);
ini_set('display_errors', 1);

if(session_status() == PHP_SESSION_NONE) {
    session_start();
}

if(isset($_SESSION['user'])) {
    if($_SESSION['user']->isAdmin()) {
        try {
            $travel = new \components\Travel($_POST['destination'], new Date($_POST['departure-date']), new Date($_POST['return-date']), $_POST['price']);
        } catch (\components\ReturnBeforeDeparture $e) {
            header("location: " . BASE . "src/admin-dashboard.php?wrongDate=1");
            exit();
        }
        $travel->insertIntoDatabase($db);
        header("location: " . BASE . "src/admin-dashboard.php?dataModified=1");
    } else {
        header("Location: " . BASE . "src/index.php");
        exit();
    }
}