<?php

require_once "app/UserService.php";
require_once "app/global.php";
require_once "app/Purchase.php";
require_once "app/User.php";
require_once "app/Destination.php";
require_once "app/Date.php";
require_once 'lib/Template.php';
require_once 'lib/DatabaseLayer.php';
;

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if (!isset($_SESSION["destination_visited"])){
    header("location: /sito-viaggi/src/index.php");
    exit();
}

if(!isset($_SESSION['user'])){
    header("location: /sito-viaggi/src/access.php");
    exit();
}

$destination_visited = $_SESSION["destination_visited"];

$travel = null;
$hotel = null;
$airline = null;
$activities = null;

if(empty($_POST['travel']) || empty($_POST['hotel']) || empty($_POST['airline'])){
    if(!isset($_SESSION['travel_to_buy']) || !isset($_SESSION['hotel_to_buy']) || !isset($_SESSION['airline_to_buy'])){
        header("location: /sito-viaggi/src/purchase_decision.php");
        exit();
    }else{
        $travel = $_SESSION['travel_to_buy'];
        $hotel = (int)$_SESSION['hotel_to_buy'];
        $airline = (int)$_SESSION['airline_to_buy'];
        $activities = (array)$_SESSION['activities_to_buy'];
    }
}else{
    $travel = $_POST['travel'];
    $hotel = (int)$_POST['hotel'];
    $airline = (int)$_POST['airline'];
    $activities = (array)$_POST['activity'];

    $_SESSION['travel_to_buy'] = $travel;
    $_SESSION['hotel_to_buy'] = $hotel;
    $_SESSION['airline_to_buy'] = $airline;
    $_SESSION['activities_to_buy'] = $activities;
}


$hotel_array = $destination_visited->getHotels();
$hotel_name = $hotel_array[$hotel-1]->getName();

$airline_array = $destination_visited->getAirlines();
$airline_name = $airline_array[$airline-1]->getName();

$user = $_SESSION['user'];

parse_str($travel,$travel_array);
$travel_start = new Date($travel_array['start']);
$travel_end = new Date($travel_array['end']);
$price = (float)$travel_array['price'];

$activity_array_id = [];
if(!empty($activities)){
    foreach($activities as $activity){
        parse_str($activity,$activity_array);
        array_push($activity_array_id, $activity_array['id']);
        $price += (float)$activity_array['price'];
    }
}

$moment = new Date(date("Y-m-d"));
$purchase = new Purchase(0,$moment,$user->getUsername(),null,$destination_visited->getId(),$travel_start,$travel_end,$hotel_name,$airline_name,$activity_array_id,$price);
$_SESSION["purchase_to_buy"] = $purchase;


$purchase_template = new \utilities\Template("templates/payment.html");
echo $purchase_template->build(array(
        "header" => buildHeader(),
        "destinationId" => $destination_visited->getId(),
        "destinationName" =>$destination_visited->getName(),
        "price" => $price,
        "footer" => buildFooter(),
    ));


