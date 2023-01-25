<?php

require_once "app/UserService.php";
require_once "app/global.php";

if (session_status() === PHP_SESSION_NONE)
    session_start();

if (!isset($_SESSION["destination_want"]))
    echo "NOT SELECTED DESTINATION";

if(!isset($_SESSION['user'])){
    header("location: /sito-viaggi/src/access.php");
}
else{
    $travel = $_POST["travel"];
    $activity = $_POST["activity"];
    $hotel = $_POST["hotel"];
    $airline = $_POST["airline"];

    if (empty($travel))
        echo("Non hai scelto il viaggio da te preferito.");
    if (empty($hotel))
        echo("Non hai scelto l'hotel in cui pernottare.");
    if (empty($airline))
        echo("Non hai scelto la compagnia aerea con cui volare.");

    if (count($travel) > 1 || count($hotel) > 1 || count($airline) > 1)
        header("location: /sito-viaggi/src/index.php");
        /*Questo perchè non dovrebbe mai capitare, ma se capitasse lo rimando alla home. 
        In alternativa stampo un echo in cui dico che ci scusiamo per il disagio e che deve tornare alla home*/
    $travel

    }