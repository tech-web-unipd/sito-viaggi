<?php
require_once 'lib/DatabaseLayer.php';
require_once 'lib/Template.php';
require_once 'app/global.php';
require_once 'app/Destination.php';
require_once 'app/Travel.php';
require_once 'app/Date.php';
require_once 'app/Activity.php';
require_once 'app/Airline.php';
require_once 'app/Hotel.php';

if (session_status() === PHP_SESSION_NONE)
    session_start();

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    echo "NOT FOUND PLACEHOLDER";
}
else{
    if(!isset($_SESSION['user']))
        header("location: /sito-viaggi/src/access.php");
    if (!isset($_SESSION["destination_want"]))
        echo "NOT SELECTED DESTINATION";
}

$destination = new \components\Destination($_GET['id']);
try {
    $destination->loadFromDatabase($db);
} catch (\components\DestinationNotFound $e) {
    echo "Error not found destination";
}

$form_template = new \utilities\Template("templates/form/form-destination.html");
$purchase_template = new \utilities\Template("templates/purchase_decision.html");

$travel_input = "";
$travel_counter = 0;
$travel_name = "travel";
foreach($destination->getTravels() as $travel){
    $travel_counter += 1;
    $travel_template = new \utilities\Template("templates/form/travel.html");
    $travel_label = "Dal " . $travel->getDeparture() ." al " . $travel->getReturn() . " al prezzo di: " . $travel->getPrice() . "€";
    $travel_input .= $travel_template->build(array(
        "idTravel" => $travel_name . $travel_counter,
        "nameTravel" => $travel_name,
        "valueTravel" => "id=" . $travel_counter . "&price=" . $travel->getPrice(),
        "labelTravel" => $travel_label,
    ));
}

$activity_input = "";
$activity_counter = 0;
$activity_name = "activity";
foreach($destination->getActivities() as $activity){
    $activity_counter += 1;
    $activity_template = new \utilities\Template("templates/form/activity.html");
    $activity_label = $activity->getName() . " al prezzo di: " . $activity->getPrice() . "€";
    $activity_input .= $activity_template->build(array(
        "idActivity" => $activity_name . $activity_counter,
        "nameActivity" => $activity_name,
        "valueActivity" => "id=" . $activity_counter . "&price=" . $activity->getPrice(),
        "labelActivity" => $activity_label,
    ));
}

$hotel_input = "";
$hotel_counter = 0;
$hotel_name = "hotel";
foreach($destination->getHotels() as $hotel){
    $hotel_counter += 1;
    $hotel_template = new \utilities\Template("templates/form/hotel.html");
    $hotel_input .= $hotel_template->build(array(
            "idHotel" => $hotel_name . $hotel_counter,
            "nameHotel" => $hotel_name,
            "labelHotel" => $hotel->getName(),
    ));
}

$airline_input = "";
$airline_counter = 0;
$airline_name = "airline";
foreach($destination->getAirlines() as $airline){
    $airline_counter += 1;
    $airline_template = new \utilities\Template("templates/form/airline.html");
    $airline_input .= $airline_template->build(array(
            "idAirline" => $airline_name . $airline_counter,
            "nameAirline" => $airline_name,
            "labelAirline" => $airline->getName(),
        ));
}

$form = $form_template->build(array(
        "travels" => $travel_input,
        "activities" => $activity_input,
        "hotels" => $hotel_input,
        "airCompanies" => $airline_input,
    ));

echo $purchase_template->build(array(
        "header" => buildHeader(),
        "form" => $form,
        "footer" => buildFooter(),
        "destinationName" => $destination->getName(),
    ));

