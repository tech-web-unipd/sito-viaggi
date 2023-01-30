<?php

require_once "lib/Template.php";
require_once "app/global.php";
require_once "app/Purchase.php";
require_once "app/Destination.php";

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if(!isset($_SESSION["payment_fine"])){
    header("location: /sito-viaggi/src/verify_payment.php");
    exit();
}

$purchase = $_SESSION["purchase_to_buy"];
$destination = new \components\Destination($purchase->getDestination());
$destination->loadFromDatabase($db);

session_destroy();
session_start();

$payment_fine_template = new \utilities\Template("templates/payment_is_fine.html");

echo $payment_fine_template->build(array(
    "header" => buildHeader(),
    "destinationId" => $destination->getId(),
    "destinationName" => $destination->getName(),
    "start" => $purchase->getStartDate(),
    "end" => $purchase->getEndDate(),
    "price" => $purchase->getPrice($db),
    "footer" => buildFooter(),
));

header("refresh: 10; location: /sito-viaggi/src/index.php");
exit();