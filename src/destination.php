<?php

use components\Destination;
use components\DestinationNotFound;
use utilities\Template;

require_once 'lib/DatabaseLayer.php';
require_once 'lib/Template.php';
require_once 'app/Destination.php';
require_once 'app/global.php';

if(!isset($_SESSION)) 
    { 
        session_start(); 
    }

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    header("location: " . BASE . "src/404.php?errorType=destination");
    exit();
}

$destination_template = new Template("templates/destination.html");
$destination = new Destination($_GET['id']);
try {
    $destination->loadFromDatabase($db);
} catch (DestinationNotFound $e) {
    header("location: " . BASE . "src/404.php?errorType=destination");
    exit();
}
$_SESSION["destination_visited"] = $destination;

$carousel_template = new Template("templates/carousel/carousel.html");
$carousel = "";

$carousel_slides = "";
$carousel_dots = "";
$counter = 0;
foreach ($destination->getImages() as $image) {
    $counter += 1;

    $slide_template = new Template("templates/carousel/slide.html");
    $dot_template = new Template("templates/carousel/dot.html");

    $carousel_slides .= $slide_template->build(array(
        "slideNumber" => $counter,
        "total" => count($destination->getImages()),
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

$activity_cards = "";
foreach ($destination->getActivities() as $activity) {
    $card_template = new Template("templates/cards/activity-card.html");
    $activity_cards .= $card_template->build(array(
        "cover" => $activity->getCover()->build(),
        "title" => $activity->getName(),
        "price" => $activity->getPrice(),
        "id" => $activity->getId(),
    ));
}

$hotel_carousel_template = new Template("templates/carousel/hotel-carousel.html");
$counter = 0;
$hotel_slides = "";
$hotel_dots = "";
foreach ($destination->getHotels() as $hotel) {
    $counter += 1;
    $slide_template = new Template("templates/carousel/hotel-slide.html");
    $dot_template = new utilities\Template("templates/carousel/hotel-dot.html");

    $hotel_slides .= $slide_template->build(array(
       "hotelName" => $hotel->getName(),
       "hotelDescription" => $hotel->getDescription(),
       "hotelId" => $hotel->getId(),
    ));

    $hotel_dots .= $dot_template->build(array(
       "index" => $counter,
    ));
}

$airline_carousel_template = new Template("templates/carousel/airline-carousel.html");
$counter = 0;
$airline_slides = "";
$airline_dots = "";
foreach ($destination->getAirlines() as $airline) {
    $counter += 1;
    $slide_template = new Template("templates/carousel/airline-slide.html");
    $dot_template = new utilities\Template("templates/carousel/airline-dot.html");

    $airline_slides .= $slide_template->build(array(
        "logo" => $airline->getLogo()->build(),
        "airlineName" => $airline->getName(),
    ));

    $airline_dots .= $dot_template->build(array(
        "index" => $counter,
    ));
}

$price_table_template = new Template("templates/price-table/price-table.html");
$counter = 0;
$table_rows = "";
foreach ($destination->getTravels() as $travel) {
    $counter += 1;
    $table_row_template = new Template("templates/price-table/table-row.html");

    $table_rows .= $table_row_template->build(array(
        "departureDate" => $travel->getDeparture(),
        "returnDate" => $travel->getReturn(),
        "price" => $travel->getPrice(),
    ));
}

echo $destination_template->build(
    array(
        "base" => BASE,
        "destinationNameNoSpan" => $destination->getNameWithoutSpan(),
        "destinationName" => $destination->getName(),
        "carousel" => $carousel,
        "priceTable" => $price_table_template->build(array("tableRows" => $table_rows)),
        "header" => buildHeader(),
        "footer" => buildFooter(),
        "description" => $destination->getDescription(),
        "hotelCarousel" => $hotel_carousel_template->build(array("slides" => $hotel_slides, "dots" => $hotel_dots)),
        "airline" => $airline_carousel_template->build(array("slides" => $airline_slides, "dots" => $airline_dots)),
        "activities" => $activity_cards,
    )
);
