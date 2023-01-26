<?php
require_once 'lib/DatabaseLayer.php';
require_once 'lib/Template.php';
require_once 'app/Activity.php';
require_once 'app/global.php';
require_once 'app/Destination.php';

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    echo "NOT FOUND PLACEHOLDER";
}

if(!isset($_SESSION["destination_visited"])) {
    header("location: /sito-viaggi/src/index.php");
    exit();
}

$activity_template = new \utilities\Template("templates/activity.html");
$activity = new \components\Activity($_GET['id']);
try{
    $activity->loadFromDatabase($db);
} catch (\components\ActivityNotFound $e){
    echo "Error not found activity";
}
$carousel_template = new \utilities\Template("templates/carousel/carousel.html");
$carousel = "";

$carousel_slides = "";
$carousel_dots = "";
$counter = 0;
foreach($activity->getImages() as $image){
    $counter += 1;

    $slide_template = new \utilities\Template("templates/carousel/slide.html");
    $dot_template = new \utilities\Template("templates/carousel/dot.html");

    $carousel_slides .= $slide_template->build(array(
            "slideNumber" => $counter,
            "total" => count($activity->getImages()),
            "image" => $image->build(),
    ));

    $carousel_dots .= $dot_template->build(array(
        "index" => $counter,
    ));
}

$carousel = $carousel_template->build(array(
    "slides" => $carousel_slides,
    "dots" => $carousel_dots,
));

$destination_cards = "";
foreach ($activity->getDestinations() as $destination) {
    $card_template = new \utilities\Template("templates/cards/destination-card.html");
    $secondary_type = "";
        try {
            $secondary_type = $destination->getSecondaryType();
        } catch (\components\FieldNotLoaded $e) {
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

    $destination_visited = $_SESSION["destination_visited"];

}

echo $activity_template->build(array(
        "header" => buildHeader(),
        "activityName" => $activity->getName(),
        "carousel" => $carousel,
        "footer" => buildFooter(),
        "description" => $activity->getDescription(),
        "destinations" => $destination_cards,
        "destinationId" => $destination_visited->getId(),
        "destinationName" => $destination_visited->getName(),
        "price" => $activity->getPrice(),
    ));