<?php

require_once "app/UserService.php";
require_once "app/global.php";
require_once "app/Purchase.php";
require_once "app/User.php";
require_once "app/Destination.php";
require_once "app/Date.php";
require_once 'lib/Template.php';
require_once 'lib/DatabaseLayer.php';

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if (!isset($_SESSION["destination_visited"]))
    header("location: /sito-viaggi/src/index.php");

if(!isset($_SESSION['user'])){
    header("location: /sito-viaggi/src/access.php");
}



$destination_visited = $_SESSION["destination_visited"];

$travel = $_POST["travel"];
$hotel = (int)$_POST["hotel"];
$airline = (int)$_POST["airline"];

if (empty($travel))
    header("location: /sito-viaggi/src/index.php");
if (empty($hotel))
    header("location: /sito-viaggi/src/index.php"); 
if (empty($airline))
    header("location: /sito-viaggi/src/index.php");


$user = $_SESSION['user'];

parse_str($travel,$travel_array);
$travel_start = new Date($travel_array['start']);
$travel_end = new Date($travel_array['end']);
$travel_price = (float)$travel_array['price'];

$activity_array_id = [];
$activity_price = (float)(0);
foreach($_POST['activity'] as $activity){
    parse_str($activity,$activity_array);
    array_push($activity_array_id, $activity_array['id']);
    $activity_price += (float)$activity_array['price'];
}
$moment = new Date(date("Y-m-d"));
$purchase = new Purchase(0,$moment,$user->getUsername(),null,$destination_visited->getId(),$travel_start,$travel_end,$hotel,$airline,$activity_array_id);
$_SESSION["purchase_to_buy"] = $purchase;

$purchase_template = new \utilities\Template("templates/payment.html");
echo $purchase_template->build(array(
        "header" => buildHeader(),
        "destinationId" => $destination_visited->getId(),
        "destinationName" =>$destination_visited->getName(),
        "price" => $activity_price + $travel_price,
        "footer" => buildFooter(),
    ));


