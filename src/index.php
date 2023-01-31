<?php
namespace pages;

use components\FieldNotLoaded;
use DestinationService;
use DestinationType;
use utilities\Template;

require_once "lib/Template.php";
require_once "lib/DatabaseLayer.php";
require_once "app/Destination.php";
require_once "app/global.php";
require_once "app/DestinationService.php";

$status = session_status();
if($status == PHP_SESSION_NONE){
    //There is no active session
    session_start();
}


function createDestinationCollections($destinations): string
{
    $cards = "";
    foreach ($destinations as $destination) {
        $card_template = new Template("templates/cards/destination-card.html");
        $secondary_type = "";
        try {
            $secondary_type = $destination->getSecondaryType();
        } catch (FieldNotLoaded $e) {
            $secondary_type = "";
        }
        $cards .= $card_template->build(array(
            "cover" => $destination->getCover()->build(),
            "id" => $destination->getId(),
            "title" => $destination->getName(),
            "primaryType" => $destination->getPrimaryType(),
            "secondaryType" => $secondary_type,
            "continent" => $destination->getContinent(),
        ));
    }
    return $cards;
}

$sea_destinations = DestinationService::getDestinationsByType($db, DestinationType::sea, "basic");
$city_destinations = DestinationService::getDestinationsByType($db, DestinationType::city, "basic");
$safari_destinations = DestinationService::getDestinationsByType($db, DestinationType::safari, "basic");
$index_template = new Template("templates/index.html");

$sea_destinations_cards = createDestinationCollections($sea_destinations);
$city_destinations_cards = createDestinationCollections($city_destinations);
$safari_destinations_cards = createDestinationCollections($safari_destinations);

echo $index_template->build(array(
    "base" => BASE,
    "header" => buildHeader(),
    "footer" => buildFooter(),
    "seaDestinations" => $sea_destinations_cards,
    "cityDestinations" => $city_destinations_cards,
    "safariDestinations" => $safari_destinations_cards,
));