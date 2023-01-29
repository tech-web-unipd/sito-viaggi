<?php

use utilities\Template;

require_once "app/UserService.php";
require_once "app/global.php";
require_once "lib/Template.php";
require_once "lib/DatabaseLayer.php";
require_once "app/User.php";
require_once "app/Purchase.php";

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if(!isset($_SESSION['user'])){
    header("location: /sito-viaggi/src/access.php");
    exit();
}

$template_purchases_made = new Template("templates/purchases_made.html");
$purchase_made = null;

$bought_trips = $_SESSION['user']->getPurchase($db);
if(count($bought_trips) == 0){
    $purchase_made = new Template("templates/purchase_made/nothing.html");
}else{
    $purchase_made = [];
    for($i = 0; $i < count($bought_trips); $i++){
        $id = $bought_trips[$i]['id'];
        $purchase = new Purchase($id);
        $purchase->loadFromDatabase($db);
        
    }
}