<?php
namespace pages;

require_once "lib/Template.php";
require_once "lib/DatabaseLayer.php";
require_once "app/Destination.php";
require_once "app/global.php";
require_once "app/DestinationService.php";

function createDestinationCollections($destinations): string
{
    $cards = "";
    foreach ($destinations as $destination) {
        $card_template = new \utilities\Template("templates/cards/destination-card.html");
        $cards .= $card_template->build(array(
            "cover" => $destination->getCover()->build(),
            "id" => $destination->getId(),
            "title" => $destination->getName(),
        ));
    }
    return $cards;
}

$sea_destinations = \DestinationService::getDestinationsByType($db, \DestinationType::sea);
$city_destinations = \DestinationService::getDestinationsByType($db, \DestinationType::city);
$index_template = new \utilities\Template("templates/index.html");

$sea_destinations_cards = createDestinationCollections($sea_destinations);
$city_destinations_cards = createDestinationCollections($city_destinations);

echo $index_template->build(array(
    "header" => "headerPlaceHolder",
    "footer" => "footerPlaceHolder",
    "seaDestinations" => $sea_destinations_cards,
    "cityDestinations" => $city_destinations_cards,
));