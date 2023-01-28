<?php

require_once "app/UserService.php";
require_once "app/global.php";
require_once "app/Purchase.php";

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if(!isset($_SESSION['user'])){
    header("location: /sito-viaggi/src/access.php");
    exit();
}

if(!isset($_SESSION["purchase_to_buy"])) { 
    header("location: /sito-viaggi/src/payment.php");
    exit(); 
}

$name = $_POST['name-payment'];
$surname = $_POST['surname-payment'];
$card = $_POST['card-payment'];
$cvc = $_POST['cvc-payment'];
$expiration = $_POST['expiration-payment'];

if(empty($name) || empty($surname) || empty($card) || empty($cvc) || empty($expiration)){
    header("location: /sito-viaggi/src/payment.php");
    exit();
}

$ok = true;
foreach(str_split($name) as $char){
    if($char < 65 || $char > 90 && $char < 97|| $char > 122)
        $ok = false;
}
if(!$ok){
    header("location: /sito-viaggi/src/payment.php");
    exit();
}

$ok = true;
foreach(str_split($surname) as $char){
    if($char < 65 || $char > 90 && $char < 97|| $char > 122)
        $ok = false;
}
if(!$ok){
    header("location: /sito-viaggi/src/payment.php");
    exit();
}

$ok = true;
if(strlen($card) != 16){
    $ok = false;
} else {
    foreach (str_split($card) as $char) {
        if ($char < 48 || $char > 57)
            $ok = false;
    }
}
if(!$ok){
    header("location: /sito-viaggi/src/payment.php");
    exit();
}

$ok = true;
if(strlen($cvc) != 3){
    $ok = false;
} else {
    foreach (str_split($cvc) as $char) {
        if ($char < 48 || $char > 57)
            $ok = false;
    }
}
if(!$ok){
    header("location: /sito-viaggi/src/payment.php");
    exit();
}

$current_year = date("Y");
$current_month = date('m');
$expiration_array = explode("-", $expiration);
if($expiration_array[0] < $current_year || $expiration_array[0] == $current_year && $expiration_array[1] < $current_month){
    header("location: /sito-viaggi/src/payment.php");
    exit();
}

$purchase = $_SESSION["purchase_to_buy"];

$purchase->setId();
$purchase->setMoment();
$purchase->setCard($card);

$purchase->insertIntoDatabase();

$_SESSION["payment_fine"] = true;
unset($_SESSION["purchase_to_buy"]);
$_SESSION["purchase_to_buy"] = $purchase;

header("location: /sito-viaggi/src/payment_is_fine.php");
exit();