<?php

require_once "app/UserService.php";
require_once "app/global.php";
require_once "app/Purchase.php";
require_once "app/User.php";


if (session_status() === PHP_SESSION_NONE)
    session_start();

if (!isset($_SESSION["destination_want"]))
    header("location: /sito-viaggi/src/index.php");

if(!isset($_SESSION['user'])){
    header("location: /sito-viaggi/src/access.php");
}
else
{
    if (empty($travel))
        header("location: /sito-viaggi/src/index.php");
    if (empty($hotel))
        header("location: /sito-viaggi/src/index.php"); 
    if (empty($airline))
        header("location: /sito-viaggi/src/index.php");

    if (count($travel) > 1 || count($hotel) > 1 || count($airline) > 1)
        header("location: /sito-viaggi/src/index.php");
    
    $travel = $_POST["travel"];
    $activity = $_POST["activity"];
    $hotel = $_POST["hotel"];
    $airline = $_POST["airline"];

    $user = $_SESSION['user'];
    $destination = $_SESSION["destination_want"];

    parse_str($travel,$travel_array);
    $travel_start = $travel_array['start'];
    $travel_end = $travel_array['end'];
    $travel_price = $travel_array['price'];

    $activity_array_id = [];
    $activity_array_price = [];
    for($i=0; $i < count($activity); $i++){
        parse_str($activity[$i],$activity_array);
        array_push($activity_array_id, $activity_array['id']);
        array_push($activity_array_price, $activity_array['price']);
    }
    $purchase = new Purchase(0, null,$user->getUsername(),null,$destination,$travel_start,$travel_end,$hotel,$airline,$activity_array_id);

}