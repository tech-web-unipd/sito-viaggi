<?php

require_once "lib/Template.php";
require_once "app/Destination.php";
require_once "app/global.php";
require_once "app/DestinationService.php";

$page_template = new \utilities\Template("templates/destinations.html");
$destinations = \DestinationService::getAllDestinations($db);
$destination_cards = "";
foreach ($destinations as $destination) {
    $card_template = new \utilities\Template("templates/cards/destination-card.html");
    $destination_cards .= $card_template->build(array(
        "cover" => $destination->getCover()->build(),
        "id" => $destination->getId(),
        "title" => $destination->getName(),
        "type" => $destination->getPrimaryType(),
        "continent" => $destination->getContinent(),
    ));
}


echo $page_template->build(array(
    "header" => "headerPlaceHolder",
    "footer" => "footerPlaceHolder",
    "allDestinations" => $destination_cards,
));
