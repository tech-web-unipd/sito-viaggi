<?php

use components\FieldNotLoaded;
use utilities\Template;

require_once "lib/Template.php";
require_once "app/Destination.php";
require_once "app/global.php";
require_once "app/DestinationService.php";

$page_template = new Template("templates/destinations.html");
$destinations = DestinationService::getAllDestinations($db);
$destination_cards = "";
foreach ($destinations as $destination) {
    $card_template = new Template("templates/cards/destination-card.html");
    $secondary_type = "";
    try{
        $secondary_type = $destination->getSecondaryType();
    } catch (FieldNotLoaded $e) {
        $secondary_type = "";
    }
    $destination_cards .= $card_template->build(array(
        "cover" => $destination->getCover()->build(),
        "id" => $destination->getId(),
        "title" => $destination->getName(),
        "primaryType" => $destination->getPrimaryType(),
        "secondaryType" => $secondary_type,
        "continent" => $destination->getContinent(),
    ));
}


echo $page_template->build(array(
    "base" => BASE,
    "header" => buildHeader(),
    "footer" => buildFooter(),
    "allDestinations" => $destination_cards,
));
