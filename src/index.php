<?php
namespace pages;

require_once "lib/Template.php";
require_once "lib/DatabaseLayer.php";
require_once "app/Destination.php";

$db = new \utilities\DatabaseLayer("127.0.0.1", "zan", "Ollare123", "progetto_tec_web");
$destinations = \components\Destination::getAllDestinations($db);
$index_template = new \utilities\Template("templates/index.html");

$destination_cards = "";
foreach ($destinations as $destination) {
    $card_template = new \utilities\Template("templates/cards/destination-card.html");
    $destination_cards .= $card_template->build(array(
        "id" => $destination->getId(),
        "title" => $destination->getName(),
        "description" => $destination->getDescription(),
    ));
}

echo $index_template->build(array(
    "header" => "headerPlaceHolder",
    "footer" => "footerPlaceHolder",
    "destinations" => $destination_cards,
));