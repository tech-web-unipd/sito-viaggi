<?php

require_once "app/UserService.php";
require_once "app/global.php";
require_once "app/Purchase.php";
require_once "app/User.php";
require_once "app/Destination.php";

if (!isset($_SESSION["destination_visited"]))
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

    $destination_visited = $_SESSION["destination_visited"];
    
    $travel = $_POST["travel"];
    $activity = $_POST["activity"];
    $hotel = $_POST["hotel"];
    $airline = $_POST["airline"];

    $user = $_SESSION['user'];

    parse_str($travel,$travel_array);
    $travel_start = $travel_array['start'];
    $travel_end = $travel_array['end'];
    $travel_price = (float)$travel_array['price'];

    $activity_array_id = [];
    $activity_price = (float)(0);
    for($i=0; $i < count($activity); $i++){
        parse_str($activity[$i],$activity_array);
        array_push($activity_array_id, $activity_array['id']);
        $activity_price += (float)$activity_array['price'];
    }

    $purchase = new Purchase(0, null,$user->getUsername(),null,$destination_visited->getId(),$travel_start,$travel_end,$hotel,$airline,$activity_array_id);
    $_SESSION["purchase_to_buy"] = $purchase;


    $purchase_template = new \utilities\Template("templates/payment.html");
    echo $purchase_template->build(array(
            "header" => buildHeader(),
            "destinationId" => $destination,
            "destinationName" =>$destination_visited->getName(),
            "price" => $activity_price + $travel_price,
            "footer" => buildFooter(),
        ));
}

