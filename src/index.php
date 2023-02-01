<?php
namespace pages;

use components\FieldNotLoaded;
use DestinationService;
use DestinationType;
use utilities\ComponentNotFound;
use utilities\Template;

error_reporting(E_ALL);
ini_set('display_errors', 1);

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

function createDestinationCollections($destinations, bool $ranked_cards = false): string
{
    if(!$ranked_cards) {
        $template_path = "templates/cards/destination-card.html";
    }
    else {
        $template_path = "templates/cards/ranked-card.html";
    }
    $cards = "";
    $counter = 0;
    foreach ($destinations as $destination) {
        $counter++;
        $card_template = new Template($template_path);
        $secondary_type = "";
        try {
            $secondary_type = $destination->getSecondaryType();
        } catch (FieldNotLoaded $e) {
            $secondary_type = "";
        }

        $card_template->replaceComponent("cover", $destination->getCover()->build());
        $card_template->replaceComponent("id", $destination->getId());
        $card_template->replaceComponent("title", $destination->getName());
        $card_template->replaceComponent("primaryType", $destination->getPrimaryType());
        $card_template->replaceComponent("secondaryType", $secondary_type);
        $card_template->replaceComponent("continent", $destination->getContinent());
        try {
            $card_template->replaceComponent("rank", $counter);
        } catch  (ComponentNotFound $e) {
            if ($ranked_cards) {
                throw $e;
            }
        }

        $cards .= $card_template->build();
    }
    return $cards;
}

$top_ten_destinations = DestinationService::getDestinationsByNumOfPurchase($db, "basic", 10);
$index_template = new Template("templates/index.html");

$top_ten_destinations_cards = createDestinationCollections($top_ten_destinations, true);

echo $index_template->build(array(
    "base" => BASE,
    "header" => buildHeader(),
    "footer" => buildFooter(),
    "mostPurchased" => $top_ten_destinations_cards,
));