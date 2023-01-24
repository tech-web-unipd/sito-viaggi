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

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    echo "NOT FOUND PLACEHOLDER";
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
foreach($destination->getTravels() as $travel){
    $travel_template = new \utilities\Template("templates/form/travel.html");
    $nameTravel = "Dal " . $travel->getDeparture() ." al" . $travel->getReturn() . " al prezzo di: " . $travel->getPrice() . "€";
    $travel_input .= $travel_template->build(array(
        "idTravel" => $travel->getDeparture(),
        "nameTravel" => $nameTravel,
    ));
}

$activity_input = "";
$counter_activity = 0;
foreach($destination->getActivities() as $activity){
    $counter_activity += 1;
    $activity_template = new \utilities\Template("templates/form/activity.html");
    $activity_name = $activity->getName() . " al prezzo di: " . $activity->getPrice() . "€";
    $activity_input .= $activity_template->build(array(
        "idActivity" => $counter_activity,
        "nameActivity" => $activity_name,
    ));
}

$hotel_input = "";
foreach($destination->getHotels() as $hotel){
    $hotel_template = new \utilities\Template("templates/form/hotel.html");
    $hotel_input .= $hotel_template->build(array(
            "idHotel" => $hotel->getName(),
            "nameHotel" => $hotel->getName(),
    ));
}

$airline_input = "";
foreach($destination->getAirlines() as $airline){
    $airline_template = new \utilities\Template("templates/form/airline.html");
    $airline_input .= $airline_template->build(array(
            "idAirline" => $airline->getName(),
            "nameAirline" => $airline->getName(),
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
        "price" => "PLACEHOLDER",
        "footer" => buildFooter(),
        "destinationName" => $destination->getName(),
    ));

